syntax match phpConcealOperator "||" conceal cchar=∨ contained containedin=phpRegion
syntax match phpConcealOperator "&&" conceal cchar=∧ contained containedin=phpRegion
syntax match phpConcealOperator "<=" conceal cchar=≤ contained containedin=phpRegion
syntax match phpConcealOperator ">=" conceal cchar=≥ contained containedin=phpRegion
syntax match phpConcealOperator "==" conceal cchar=≈ contained containedin=phpRegion
syntax match phpConcealOperator "==" conceal cchar=≈ contained containedin=phpRegion
syntax match phpConcealOperator "===" conceal cchar=≡ contained containedin=phpRegion
syntax match phpConcealOperator "::" conceal cchar=∷ contained containedin=phpRegion
syntax match phpConcealOperator "!=" conceal cchar=≠ contained containedin=phpRegion
syntax match phpConcealRelation "=>" conceal cchar=⇛ contained containedin=phpRegion
syntax match phpConcealMemberSelector "\->" conceal cchar=→ contained containedin=phpRegion

hi link phpConcealOperator phpOperator
hi link phpConcealStatement phpStatement
hi link phpConcealKeyword phpKeyword
hi link phpConcealRelation phpRelation
hi link phpConcealMemberSelector phpMemberSelector
hi! link Conceal phpOperator
