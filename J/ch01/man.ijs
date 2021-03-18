coclass 'Man'

create =: verb define
  name =: y
)

hello =: verb define
  echo 'Hello ', name, '!'
)

goodbye =: verb define
  echo 'Good-bye ', name, '!'
)

m =. 'David' conew 'Man'
hello__m ''
goodbye__m ''

exit 0
