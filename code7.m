s=[11 11 11 11 11 11 11 11 11 11];
t=[1 2 3 4 5 6 7 8 9 10];

weights=[5 5 5 5 5 15 15 15 15 15];
G = digraph(s,t,weights);
%plot(G,'EdgeLabel',G.Edges.Weight ,'NodeColor','r');
plot(G , 'EdgeLabel', G.Edges.Weight,'Layout','force');


%s=11;
%t=1:10;

G=graph(s,t);
h=plot(G,'Layout','force')
highlight(h,[1 2,3,4,5,6,7,8,9,10 11],'NodeColor','blue');
highlight(h,11,1,'EdgeColor','magenta');
highlight(h,11,2,'EdgeColor','magenta');
highlight(h,11,3,'EdgeColor','magenta');
highlight(h,11,4,'EdgeColor','magenta');
highlight(h,11,5,'EdgeColor','magenta');
highlight(h,11,6,'EdgeColor','magenta');
highlight(h,11,7,'EdgeColor','magenta');
highlight(h,11,8,'EdgeColor','magenta');
highlight(h,11,9,'EdgeColor','magenta');
highlight(h,11,10,'EdgeColor','magenta');



%highlight(h,4,1,'EdgeColor','black');