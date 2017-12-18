function y = iscross(p11,p12,p21,p22)
d = [p22' - p21',p11' - p12'];
if abs(det(d)) <= 1e-3
    y = false;
    return;
end
r = d \ [p11' - p21'];
y = all(r > 0 & r < 1);
end