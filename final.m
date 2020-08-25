sudoku_mat([5,3,6,7,0,8,0,0,1;0,0,0,1,5,0,0,0,3;0,0,0,0,0,3,0,5,0;6,9,7,0,3,5,0,0,2;3,0,0,0,0,0,5,0,9;8,0,5,9,0,0,3,0,0;0,5,3,6,0,0,0,0,0;1,0,0,5,7,9,0,3,0;9,0,0,3,0,1,4,0,5])

function sub=sudoku_mat(matrix)
for row =1:9
    for col=1:9
        if matrix(row,col)==0
            sub(row,col)="";
            for num = 1:9
                row_sum=sum(matrix(row,:)==num);
                col_sum=sum(matrix(:,col)==num);
                block_sum=sum(sum(matrix(3*ceil(row/3)-2:3*ceil(row/3),3*ceil(col/3)-2:3*ceil(col/3))==num));  
                if row_sum==0 && col_sum==0 && block_sum==0
                    sub(row,col)=sub(row,col)+string(num);
                end
            end
        else
            sub(row,col)=string(matrix(row,col));
        end
    end
end
end
