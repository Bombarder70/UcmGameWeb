<template>
  <div v-for="item in data.quests" :key="item" class="card mb-3 p-2">
    <div class="row">
      <div class="col-10">
        <h2 style="margin-left:10px;color:#c90c0c">#{{ item.id }} {{ item.otazka }}</h2>
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
        <input class="mt-5" v-model="newAnswer" placeholder="Zadajte odpoveď"/>
        <button 
          @click="addAnswer(item.id)" 
          class="btn btn-primary ml-5"
        >Pridať odpoveď</button>
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
    <input v-model="newQuestion" type="text" placeholder="Zadajte otazku">
    <button 
      @click="addQuestionFunc()" 
      class='btn btn-danger'
    >Pridať</button>
  </div>
  <div class="text-center">
    <button
      @click="downloadJson()" 
      class='btn btn-limet mt-5' style="margin-left:10px"
    >Uložiť otázky</button>
  </div>
</template>

<script>
var data = {
  "quests": [
    {
      "id": 1,
      "otazka": "Ako sa vola velky objekt ktory dokaze plavat na vode?",
      "typ": 1,
      "odpovede":[
        {"id":1,"odpoved":"Lod"},
        {"id":2,"odpoved":"Pltka"},
        {"id":3,"odpoved":"Cln"},
        {"id":4,"odpoved":"Jachta"}
      ],
      "zobrazena": false,
      "odpoved": false
    },
    {
      "id": 2,
      "otazka": "Napis aspon jeden stat ktory hranici so Slovenskom",
      "typ": 1,
      "odpovede": [
        {"id":1,"odpoved":"Ukrajina"},
        {"id":2,"odpoved":"Cesko"},
        {"id":3,"odpoved":"Rakusko"},
        {"id":4,"odpoved":"Madarsko"},
        {"id":5,"odpoved":"Polsko"}
      ],
      "zobrazena": false,
      "odpoved": false
    },
    {
      "id": 3,
      "otazka": "10 + 10 = ?",
      "typ": 1,
      "odpovede": [
        {"id":1,"odpoved":20}
      ],
      "zobrazena": false,
      "odpoved": false
    }
  ]
};


export default {
  data() {
    return {
      data: data,
      newAnswer: '',
      newQuestion: "",
      addQuestion: false,
    }
  },
  methods: {
    addAnswer(questionId) {
      this.data.quests.forEach((item) => {
        if (item.id == questionId) {
          item['odpovede'].push({"odpoved": this.newAnswer});
          this.newAnswer = '';
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
      this.data.quests.push({
        "id": 99,
        "otazka": this.newQuestion,
        "typ": 1,
        "odpovede": []
      });

      this.newQuestion = '';
    },
    downloadJson() {
      f.axiosPost('dia_insert', {
        tableName: 'generator',
        data: {
          structure: this.data
        }
      },
      (res) => {
        f.windowOpen("generuj_json", {
          id: res.data,
          reset: true,
          unset: 'structure',
          json: true,
          return_only_data: true
        });
      })
    }
  }
}
</script>

<style scoped>
.custom-form {
  
}
</style>