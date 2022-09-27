local ok, flutter_tools = pcall(require, 'flutter-tools')
if (not ok) then return end

flutter_tools.setup{}
