function new = ControlW (board)
status = 0;
for row = 2:1:4 %Second row onwards
    for column = 1:4
        if board(row,column) ~= 0
            if board(row-1, column) == 0 || board(row-1, column) == board(row, column)
                board(row-1,column) = board(row-1,column) + board(row, column);
                board(row, column) = 0;
                status = 1; % miscare posibila
            end
        end
    end
end
if status == 0 
    %pentru primul loop, daca o schimbare in numar nu poate fi gasita,
    %atunci miscarea W e invalida pentru masa curenta
    new = board;
    return
end
while status == 1
    status = 0;
    for row = 2:1:4
        for column = 1:4
            if board(row,column) ~= 0
                if board(row-1, column) == 0 || board(row-1, column) == board(row, column)
                    board(row-1,column) = board(row-1,column) + board(row, column);
                    board(row, column) = 0;
                    status = 1; % miscare posibila
                end
            end
        end
    end
end
new = board;



