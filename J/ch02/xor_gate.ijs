isPositive=: 3 : 0
if. y>0 do.
  1
else.
  0
end.
)

AND =: dyad define
  isPositive _0.7 + (0.5, 0.5) +/ .* (x, y)
)

NAND =: dyad define
  isPositive 0.7 + (_0.5, _0.5) +/ .* (x, y)
)

OR =: dyad define
  isPositive _0.2 + (0.5, 0.5) +/ .* (x, y)
)

XOR =: dyad define
  s1 =. x NAND y
  s2 =. x OR y
  s1 AND s2
)

echo 0 XOR 0
echo 0 XOR 1
echo 1 XOR 0
echo 1 XOR 1

exit 0
