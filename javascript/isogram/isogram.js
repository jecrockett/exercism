function Isogram(string){
  this.input = this.sanitize(string);
  this.letters = [];
}

Isogram.prototype = {
  isIsogram: function() {

    for(var i = 0; i < this.input.length; i++) {
      if letterIsDuplicated() {
        return false;
      }

      letters.push(this.input[i].toLowerCase());
    }

    return true;
  },

  letterIsDuplicated: function() {
    (letters.includes(this.input[i]))
  }
  sanitize: function(string) {
    return string.replace(/-|\s/g,"");
  }
};

module.exports = Isogram;
