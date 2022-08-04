function sequence = primitive_calculator(n, m)
% primitive_calculator()
% ARGUMENTS
%           n: Number to be converted (scalar)
%           m: Number to be converted to (scalar)
% RETURNS:
%           sequence: Sequence of minimum number of operations (1D array)

% Print the number to be converted on command line
fprintf('n = %d\n', n)

% Initialize an array to store the sequence of operations
sequence = [];

% Check for the invalid conditions
if n <= 0
    msgbox('Please input a valid number greater than 0.', 'Error', 'warn')
    
% Check if the number is already equal to m
elseif n == m
    % Print results on command line
    fprintf('Number of operations = %d\n', numel(sequence))
    fprintf('Sequence of operations: [')
    fprintf('%g ]\n', sequence);
    
% Convert n to m
else
    while n>m
        % Operation 1
        if rem(n, 2) ~= 0 && rem(n, 3) ~= 0
            % Subtract 1
            n = n-1;
            % Update operations array
            sequence = [sequence, 1];
            
        % Operation 2
        elseif rem(n, 2) == 0
            % Divide by 2
            n = n/2;        
            % Update operations array
            sequence = [sequence, 2];
            
        % Operation 3
        elseif rem(n, 3) == 0
            % Divide by 3
            n = n/3;
            % Update operations array
            sequence = [sequence, 3];
        end
    end
    
    % Print results on command line
    fprintf('Number of operations = %d\n', numel(sequence))
    fprintf('Sequence of operations: [')
    fprintf('%g ', sequence(1:end-1));
    fprintf('%g]\n', sequence(end));
end