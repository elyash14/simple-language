# boolean type
boolean ->
     "true" {% function(d) { return {type: 'boolean', value: true} } %} 
    | "false" {% function(d) { return {type: 'boolean', value: false} } %} 

# string type
string ->
    "\"" [^/"]:+ "\"" {% function(d) { return {type: 'string', value: d[1].join("")} } %}

# float type
float -> 
    _digit "." _digit {% function(d) {return {type: "float", value : parseFloat(d[0] + d[1] + d[2])} } %}
    | integer {% id %}

# integer type
integer ->
    _digit  {% function(d) {return { type: "integer", value: parseInt(d[0])} } %}

_digit -> [0-9]:+ {% function(d) { return d[0].join("") } %}