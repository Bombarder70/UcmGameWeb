<template>
  <div v-if="showGenerator == false">
    <div class='card text-center'>
      <div class='card-body'>
        <input class="form-control" v-model="name" placeholder="Unikátny názov generátora otázok"/>
        <button @click="showGenerator = true" class="btn btn-primary mt-2">Pokračovať</button>
      </div>
    </div>
  </div>
  <div v-if="showGenerator">
    <div class='card text-center mb-2'>
      <div class='card-body'>
        <h1>{{ name }}</h1>
      </div>
    </div>
    <div v-for="item in data.quests" :key="item" class="card mb-3 p-2">
      <div class="row">
        <div class="col-10">
          <h2 style="margin-left:10px;color:#4f2d02">#{{ item.id }} {{ item.otazka }}</h2>
        </div>
        <div class="col-2">
          <button
            @click="deleteQuestion(item.id)"
            class="btn btn-danger"
          >Odstrániť otázku</button>
        </div>
      </div>
      <div style="margin-left:10px; font-size:22px">
        <div v-if="item.typ == 1"><br>
          <div class="row">
            <div class="col-6" v-for="odpoved in item.odpovede" :key="odpoved">
              <b>{{ odpoved.odpoved }}</b>
              <button
                style=" display: block; margin-right:10px; padding: 8px 12px;  margin-top:-30px; margin-left:31%;"
                @click="deleteAnswer(item.id, odpoved.id)"
                class="btn btn-warning delete-answer"
              >
                <i class="fas fa-times"></i>
              </button>
            </div>
          </div>
          <div class="row mt-5">
            <div class="col-8">
              <input class="form-control mt-2" v-model="newAnswer[item.id]" placeholder="Zadajte odpoveď"/>
            </div>
            <div class="col-4">
              <button 
                @click="addAnswer(item.id)" 
                class="btn btn-primary ml-5 mt-1"
              >Pridať odpoveď</button>
            </div>
          </div>
        </div>
      </div>
      <hr>
    </div>
    <div class="text-center">
      <button 
        v-if="!addQuestion"
        @click="addQuestion = true" 
        class='btn btn-purple' style="margin-left:10px"
      >Pridať novú otázku</button>
    </div>
    <div v-if="addQuestion" class="card">
      <div class="card-body">
        <div class='row'>
          <div class='col-9'>
            <textarea class="form-control mt-2" v-model="newQuestion" type="text" placeholder="Zadajte otázku" style="width:100%"/>
          </div>
          <div class='col-3'>
            <button 
              @click="addQuestionFunc()" 
              class='btn btn-danger'
            >Pridať otázku</button>
          </div>
        </div>
      </div>
    </div>
    <div class="text-center">
      <button
        @click="downloadJson()" 
        class='btn btn-limet mt-5' style="margin-left:10px"
      >Uložiť otázky</button>
    </div>
  </div>
</template>

<script>
var data = {
  "quests": []
};

export default {
  data() {
    return {
      data: data,
      newAnswer: [],
      newQuestion: "",
      addQuestion: false,
      name: "",
      showGenerator: false
    }
  },
  methods: {
    addAnswer(questionId) {
      this.data.quests.forEach((item) => {
        if (item.id == questionId) {

          var lastAnswerId = 1;
          item['odpovede'].forEach((odpoved, index) => {
            if (typeof odpoved.id != "undefined") {
              lastAnswerId = odpoved.id;
            }
          })

          item['odpovede'].push({"id": lastAnswerId + 1, "odpoved": this.newAnswer[item.id]});
          this.newAnswer[item.id] = '';
        }
      })
    },
    deleteAnswer(questionId, answerId) {
      this.data.quests.forEach((item) => {
        if (item.id == questionId) {
          item['odpovede'].forEach((odpoved, index) => {
            if (odpoved.id == answerId) {
              item['odpovede'].splice(index, 1);
            }
          })
        }
      })
    },
    deleteQuestion(questionId) {
      this.data.quests.forEach((item, index) => {
        if (item.id == questionId) {
          this.data.quests.splice(index, 1);
        }
      })
    },
    addQuestionFunc() {
      this.addQuestion = false;
      var lastId = 1;

      this.data.quests.forEach((item) => {
        if (item.id > 0) {
          lastId = item.id + 1;
        }
      })

      this.data.quests.push({
        "id": lastId,
        "otazka": this.newQuestion,
        "typ": 1,
        "odpovede": []
      });

      this.newQuestion = '';
    },
    downloadJson() {
      f.axiosPost('pridat_json', {
        tableName: 'generator',
        idRoom: f.getUrlParam("previous_page_id_form"),
        name: this.name,
        data: this.data
      },
      (res) => {
        this.name = "";

        f.windowOpen("generuj_json", {
          id: res.data,
          reset: true,
          unset: 'structure',
          json: true,
          return_only_data: true
        });

        location.reload();
      })
    }
  }
}
</script>

<style scoped>
.custom-form {
  
}
</style>