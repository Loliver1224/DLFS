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

echo 0 AND 0
echo 0 AND 1
echo 1 AND 0
echo 1 AND 1

exit 0
