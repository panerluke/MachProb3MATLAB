function p = prob3(f)

if length(f) <= 10
    fn = length(f) - 1;
else
    fn = 10;
end

for n = 1:fn
p = polyfit(f(:, 1), f(:, 2), n);
e = norm(f(:, 2) - polyval(p, f(:, 1)));
x = [n, e];
if n == 1
    y = x;
end
if y(2) >= x(2)
    z = x(1);
end
end

p = polyfit(f(:, 1), f(:, 2), z);

end