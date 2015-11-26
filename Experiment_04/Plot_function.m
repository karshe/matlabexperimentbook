%%Plot Sine Function%%
for x = 0:0.1:1 % Loop
   y = sin(x);
   %Plot function
   plot([0:x],[0:y]);
   drawnow
end
