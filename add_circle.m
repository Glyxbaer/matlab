function out_image_matrix=add_circle(src_image_matrix,xpos,ypos,rad,koeff)
    out_image_matrix=add_ellipse(src_image_matrix,xpos,ypos,rad,rad,90,koeff);
end