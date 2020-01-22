function h = draw_c(x,y,r,L,F,C)
d = r*2;
px = x-r;
py = y-r;
h = rectangle('Position',[px, py, d, d],'Curvature',[1,1]);
h.LineWidth = L;
h.FaceColor = F;
h.EdgeColor = C;
daspect([1,1,1])