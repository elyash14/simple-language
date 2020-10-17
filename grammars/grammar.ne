
input -> declaration | integer

declaration -> 
    variable_name " as " type " = " literal {% function(d){
        //TODO type and literal type must be equal
        //TODO add to global variables table
        return {
            variant: 'variable',
            left_value: d[0],
            right_value: d[4][0].value,
            type: d[2]
        }
    } %}

variable_name -> 
    [a-zA-Z]:+ {% function(d){ return d[0] } %}

type -> 
    "boolean" {% function(d){ return "boolean" } %}
    | "integer" {% function(d){ return "integer" } %}
    | "float" {% function(d){ return "float" } %}
    | "string" {% function(d){ return "string" } %}

literal -> boolean | integer | float | string

@include "./primary-typs.ne"