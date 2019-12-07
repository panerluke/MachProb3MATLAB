function p = prob3(f)

for n = 1:length(f) - 1
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