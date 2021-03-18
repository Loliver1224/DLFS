isPositive=: 3 : 0
if. y>0 do.
  1
else.
  0
end.
)

NAND =: dyad define
  isPositive 0.7 + (_0.5, _0.5) +/ .* (x, y)
)

echo 0 NAND 0
echo 0 NAND 1
echo 1 NAND 0
echo 1 NAND 1

exit 0
