const nearley = require("nearley");
const grammar = require("./grammar.js");

// Create a Parser object from our grammar.
const parser = new nearley.Parser(nearley.Grammar.fromCompiled(grammar));

// Parse something!
parser.feed('myVar as float = 0.2');

try {
  // parser.results is an array of possible parsings.
  console.log(parser.results);
} catch (e) {
    console.log(e);
}
