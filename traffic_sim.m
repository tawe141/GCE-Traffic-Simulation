adj_mat = xlsread('gce traffic network weight punish.xlsx', 'B2:AO41');
adj_mat(isnan(adj_mat)) = 0;

G = graph(adj_mat);
p = plot(G, 'EdgeLabel', G.Edges.Weight, 'LineWidth', 3*G.Edges.Weight);
% [path1, d] = shortestpath(G, 29, 1);
% highlight(p, path1, 'EdgeColor', 'r');
% dist = distances(G);

% simulate traffic flow

% move 10 people from room1 to room2
G = addPeople(G, 18, 19, 10);

% move 8 people from room6 to dlab
G = addPeople(G, 39, 11, 8);

p = plot(G, 'EdgeLabel', G.Edges.Weight, 'LineWidth', G.Edges.Weight./8);
