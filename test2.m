names = {'USA' 'GBR' 'DEU' 'FRA'}';
country_code = {'1' '44' '49' '33'}';
NodeTable = table(names,country_code,'VariableNames',{'Name' 'Country'});
G = graph(EdgeTable,NodeTable);
plot(G,'NodeLabel',G.Nodes.Country,'EdgeLabel',G.Edges.Code)