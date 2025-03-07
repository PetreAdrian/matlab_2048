function [StatusW, StatusS, StatusA, StatusD] = NextStepCheck(board, StepW, StepS, StepA, StepD) 
StatusW = 1;
StatusS = 1;
StatusA = 1;
StatusD = 1;

if isIdentical(board,StepW) == 1
    StatusW = 0;
end
if isIdentical(board,StepS) == 1
    StatusS = 0;
end
if isIdentical(board,StepA) == 1
    StatusA = 0;
end
if isIdentical(board,StepD) == 1
    StatusD = 0;
end
%Daca dupa incercarea noua masa e lafel ca si cand a fost facuta miscarea
%interioare , miscare invalida


    