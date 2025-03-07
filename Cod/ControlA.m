function new = ControlA (board)
status = 0;
for column = 2:4 
    for row = 1:4
        if board(row,column) ~= 0
            if board(row, column-1) == 0 || board(row, column-1) == board(row, column)
                board(row,column-1) = board(row,column-1) + board(row, column);
                board(row, column) = 0;
                status = 1; % mutare posibila
            end
        end
    end
end
if status == 0 
    %pentru primul loop, daca o schimbare in numar nu poate fi gasita,
    %atunci miscarea W e invalida pentru masa curenta
    new = board;
    return;
end
while status == 1
    status = 0;
    for column = 2:4
        for row = 1:4
            if board(row,column) ~= 0
                if board(row, column-1) == 0 || board(row, column-1) == board(row, column)
                    board(row,column-1) = board(row,column-1) + board(row, column);
                    board(row, column) = 0;
                    status = 1; % mutare posibila
                end
            end
        end
    end
end
new = board;


