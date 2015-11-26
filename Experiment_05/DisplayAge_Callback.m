function output_txt = DisplayAge_Callback(obj,event_obj)

pos = get(event_obj,'Position');
output_txt = {['Age: ',num2str(pos(1),4)],...
    ['Degree: ',num2str(pos(2),4)]};

% If there is a Z-coordinate in the position, display it as well
if length(pos) > 2
    output_txt{end+1} = ['Z: ',num2str(pos(3),4)];
end
