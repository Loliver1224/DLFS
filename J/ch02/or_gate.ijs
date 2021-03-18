isPositive=: 3 : 0
if. y>0 do.
  1
else.
  0
end.
)

OR =: dyad define
  isPositive _0.2 + (0.5, 0.5) +/ .* (x, y)
)

echo 0 OR 0
echo 0 OR 1
echo 1 OR 0
echo 1 OR 1

exit 0
