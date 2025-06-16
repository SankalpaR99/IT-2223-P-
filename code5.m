s=1;
t=2:6;

G=graph(s,t);
h=plot(G,'Layout','force')
highlight(h,[1,3],'NodeColor','green');
highlight(h,1,3,'EdgeColor','magenta');
highlight(h,4,1,'EdgeColor','black');