%1.write the MATHLAB code to import a graph .Use the following source and destination data.
%2.Using the imported data,draw the graph
%3.Write the MATHLAB code to find and display the subgraph for the given nodes
%4.identify and display the adjecent vertices for each nodes
%5.Label the edges of the graph
%6.Label the nodes of the graph
%7.writes  the MATHLAB code to color the graph(graph coloring)
%8.Writes the MATHLAB code to find the shortest path from node 1 to node 5
%source = [1,1,2,3,4]
%destination=[2,3,4,4,5]

% GRAPH OPERATIONS SCRIPT

% 1. Import the Graph
source = [1, 1, 2, 3, 4];
destination = [2, 3, 4, 4, 5];
G = graph(source, destination);

% 2. Draw the Graph
figure;
plot(G);
title('Original Graph');

% 3. Subgraph for Given Nodes (e.g., nodes 1, 2, 4)
nodes = [1, 2, 4];
subG = subgraph(G, nodes);

figure;
plot(subG);
title('Subgraph with Nodes 1, 2, 4');

% 4. Identify and Display Adjacent Vertices for Each Node
disp('Adjacent vertices:');
for i = 1:numnodes(G)
    neighborsList = neighbors(G, i);
    fprintf('Node %d: ', i);
    disp(neighborsList');
end

% 5 & 6. Label the Edges and Nodes of the Graph
figure;
p = plot(G);
labelnode(p, 1:numnodes(G), string(1:numnodes(G))); % Node labels
labeledge(p, G.Edges.EndNodes(:,1), G.Edges.EndNodes(:,2), 1:numedges(G)); % Edge labels
title('Graph with Node and Edge Labels');

% 7. Graph Coloring (Greedy Coloring)
colors = zeros(1, numnodes(G));
for i = 1:numnodes(G)
    neighborColors = colors(neighbors(G, i));
    color = 1;
    while any(neighborColors == color)
        color = color + 1;
    end
    colors(i) = color;
end

figure;
p = plot(G, 'NodeCData', colors, 'MarkerSize', 8);
colorbar;
title('Graph Coloring');

% 8. Shortest Path from Node 1 to Node 5
[spath, d] = shortestpath(G, 1, 5);
fprintf('Shortest path from 1 to 5: ');
disp(spath);
fprintf('Total path length: %d\n', d);

figure;
p = plot(G);
highlight(p, spath, 'EdgeColor', 'r', 'LineWidth', 2);
highlight(p, spath, 'NodeColor', 'r');
title('Shortest Path from Node 1 to Node 5');
