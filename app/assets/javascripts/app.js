/* global Vue */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      characters: [],
      newPersonFirstName: "",
      newPersonLastName: "",
      newPersonHouse: "",
      errors: []
    },
    mounted: function() {
      $.get('/api/v2/characters.json', function(data) {
        this.characters = data;
      }.bind(this));
    },
    methods: {
      toggleHouse: function(inputCharacter) {
        inputCharacter.houseVisible = !inputCharacter.houseVisible;
      },

      addPerson: function() {
        var params = {
          first_name: this.newPersonFirstName,
          last_name: this.newPersonLastName,
          house: this.newPersonHouse
        }
        $.post('/api/v2/characters.json', params, function(newCharacter) {
          this.characters.push(newCharacter);
          this.newPersonFirstName = "";
          this.newPersonLastName = "";
          this.newPersonHouse = "";
          this.errors = [];
        }.bind(this)).fail(function(response) {
          this.errors = response.responseJSON.errors;
        }.bind(this));
      },

      deletePerson: function(inputCharacter) {
        
      }
    },
    computed: {

    }
  });
});