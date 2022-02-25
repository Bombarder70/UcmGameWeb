<template>
  <div class="custom-form">
    <div>
      <div v-for="item in data" :key="item">
        <h2>Otázka č. {{ item.id }}</h2>
        <div>
          {{ item.otazka }}
          <div v-if="item.typ == 1">
            <template v-for="odpoved in item.odpovede" :key="odpoved">
              <p class="lead">
                <b>{{ odpoved.odpoved }}</b>
                <button
                  @click="deleteAnswer(item.id, odpoved.id)"
                  class="btn btn-warning"
                  style="float:right;"
                >
                  <i class="fas fa-trash-alt"></i>
                </button>
              </p>
            </template>
            <input v-model="newAnswer"/>
            <button 
              @click="addAnswer(item.id)" 
              class="btn btn-primary ml-5"
            >Pridať odpoveď</button>
          </div>
        </div>
        <hr>
      </div>
      <button 
        v-if="!addQuestion"
        @click="addQuestion = true" 
        class='btn btn-success'
      >Pridať novú otázku</button>
      <div v-if="addQuestion" class="card">
        <input v-model="newQuestion" type="text" placeholder="Zadajte otazku">
        <button 
          @click="addQuestionFunc()" 
          class='btn btn-danger'
        >Pridať</button>
      </div>
      <button 
        @click="downloadJson()" 
        class="btn mb-2 mb-md-0 btn-primary btn-block"
      >
        <span>Vygenerovať JSON súbor</span>
        <div class="icon d-flex align-items-center justify-content-center">
          <i class="fas fa-plus"></i>
        </div>
      </button>
    </div>
  </div>
</template>

<script>
var data = [
  {
    "id": 2,
    "otazka": "10 + 10 = ?",
    "typ": 1,
    "odpovede": [
      {"id": 1, "odpoved": "20"}
    ]
  },
  {
    "id": 3,
    "otazka": "Testovacia otazka cislo 2",
    "typ": 2,
    "odpovede": [
      {"id": 1, "odpoved": "Odpoved 1","typ": true},
      {"id": 2, "odpoved": "Odpoved 2","typ": false},
    ]
  }
];

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
      this.data.forEach((item) => {
        if (item.id == questionId) {
          item['odpovede'].push({"odpoved": this.newAnswer});
          this.newAnswer = '';
        }
      })
    },
    deleteAnswer(questionId, answerId) {
      this.data.forEach((item) => {
        if (item.id == questionId) {
          item['odpovede'].forEach((odpoved, index) => {
            if (odpoved.id == answerId) {
              item['odpovede'].splice(index, 1);
            }
          })
        }
      })
    },
    addQuestionFunc() {
      this.addQuestion = false;
      this.data.push({
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