function g2 =  hessstrflt2(init_im, scale)

[y,x]=meshgrid(-3:6/scale:3,-3:6/scale:3);
g2a=(2*(x.^2)-1).*exp(-(x.^2+y.^2));
g2a=g2a/sum(abs(g2a(:)));
g2b=2*x.*y.*exp(-(x.^2+y.^2));
g2b=g2b/sum(abs(g2b(:)));
g2c=(2*(y.^2)-1).*exp(-(x.^2+y.^2));
g2c=g2c/sum(abs(g2c(:)));

g2a_rst=imfilter(init_im, g2a, 'symmetric', 'same');
g2(:,:,1)=g2a_rst;
g2b_rst=imfilter(init_im, g2b, 'symmetric', 'same');
g2(:,:,2)=g2b_rst;
g2c_rst=imfilter(init_im, g2c, 'symmetric', 'same');
g2(:,:,3)=g2c_rst;