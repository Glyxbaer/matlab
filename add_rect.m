function out_image_matrix=add_rect(src_image_matrix,xpos,ypos,height,width,koeff)
    for i=xpos:xpos+width
        for j=ypos:ypos+height
            src_image_matrix(i,j)=src_image_matrix(i,j)+koeff;
        end
    end
    out_image_matrix=src_image_matrix;
end