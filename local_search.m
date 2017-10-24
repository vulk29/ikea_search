function [ step1 ] = local_search(step0, k, N, param, F)
l=1;
if param==1 step1=local_searchLF (step0, k, N, F);
end

if param==2 step1=local_search_greedy(step0, k, N, F);
end

end