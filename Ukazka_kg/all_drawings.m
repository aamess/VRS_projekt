function all_drawings()
clf
%X Y R L F C
draw_c(1,1,1,400,'none','w');%init

draw_c(1,3,1.6,1,'none','k')%horny luc
draw_c(-0.73,0,1.6,1,'none','k')%lavy luc
draw_c(2.73,0,1.6,1,'none','k')%pravy luc

draw_c(1,1,1,205,'none','w');%Bielenie

draw_c(1,1,1,2,'none','k');%vonk pneu
draw_c(1,1,0.8,2,'none','k');%vnut pneu
draw_c(1,1,0.9,76,'none','k');%vypln pneu
draw_c(1,1,0.75,2,'none','k');%rafik
draw_c(1,1,0.1,2,'none','k');%STRED

axis([0,2,0,2]);
