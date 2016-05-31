function Isogram(string){
  this.input = this.sanitize(string);
  this.letters = '';
}

Isogram.prototype = {
  isIsogram: function() {

    for(var i = 0; i < this.input.length; i++) {
      var nextLetter = this.input[i].toLowerCase();

      if (this.letters.includes(nextLetter)) {
        return false;
      }

      this.recordLetter(nextLetter);
    }

    return true;
  },

  recordLetter: function(newLetter) {
    this.letters += newLetter;
  },

  sanitize: function(string) {
    return string.replace(/-|\s/g,"");
  }
};

module.exports = Isogram;
