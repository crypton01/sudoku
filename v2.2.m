matrix=randi(9,9)
for row =1:9
    for col=1:9
        %if matrix(row,col)==0
           % row_sum=sum(matrix(row,:))
           % col_sum=sum(matrix(:,col))
            %block_sum=sum(sum(matrix(3*ceil(row/3)-2:3*ceil(row/3),3*ceil(col/3)-2:3*ceil(col/3))))
            matrix(3*ceil(row/3)-2:3*ceil(row/3),3*ceil(col/3)-2:3*ceil(col/3))
       % end
    end
end
