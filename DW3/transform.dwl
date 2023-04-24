%dw 2.0
output application/json
var v= payload
---
 v map( {
     id: $.id 
    } ++ {
        ($.fields map($.name): if ($.content is String)  $.content else ($.content.values joinBy ",") 
 )
    })



//   v map ((item, index) ->
//      {id : item.id} ++
//      {(item.fields map (
//          ($.name) :  if ($.content is String)  $.content else ($.content.values joinBy ",") 
//   ))})  