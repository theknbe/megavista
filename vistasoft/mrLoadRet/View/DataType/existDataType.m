function found = existDataType(dataTypeName,dataTypes,fullMatch)
% dataTypes: optional dataTypes structure. Default is to use the global dataTYPES.
global dataTYPES
if ~exist('dataTypes','var') | isempty(dataTypes),  dataTypes = dataTYPES; end
return;