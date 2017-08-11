function [ S ] = common_struct( block_path )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This file is part of CoCoSim.
% Copyright (C) 2014-2016  Carnegie Mellon University
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% COMMON_STRUCT - common internal representation for all blocks
%
%   This function create the structure for the internal representation's
%   parameters common to all blocks
%
%   S = COMMON_STRUCT(file_name)

% load config
IR_config;

%% Construction of the internal representation
S = struct();
S.Path = IRUtils.name_format(block_path); %modified path of the block to be a valid name
S.BlockType = get_param(block_path, 'BlockType');
S.Name = get_param(block_path, 'Name');
S.Origin_path = block_path; %origin_path of the block
S.Handle = get_param(block_path, 'Handle');
S.LineHandles = get_param(block_path, 'LineHandles');

%% Common properties added
if isKey(block_param_map, 'CommonParameters')
    values = block_param_map('CommonParameters');
    for i=1:numel(values)
        S.(values{i}) = get_param(block_path, values{i});
    end
end
end

