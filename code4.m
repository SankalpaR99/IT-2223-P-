% s=[1 1 2 3 4];
% t=[2 3 4 4 5];
% G=graph(s,t);
% 
% nodeColors=[
%     1 0 0;  %node1 - red
%     0 1 0;  %node1 - red
%     0 0 1;  %node1 - red
%     1 1 0;  %node1 - red
%     1 0 1;  %node1 - red
%     ]
% plot(g,'NodeColor',)


s = [1 1 2 3 4];
t = [2 3 4 4 5];
G = graph(s, t);

nodeColors = [
    1 0 0;  % node 1 - red
    0 1 0;  % node 2 - green
    0 0 1;  % node 3 - blue
    1 1 0;  % node 4 - yellow
    1 0 1;  % node 5 - magenta
];

h = plot(G);
h.NodeColor = nodeColors;
