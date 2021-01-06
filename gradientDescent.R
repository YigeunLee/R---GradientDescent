library(pracma)

gradient_descent = function(f,x,target_val,target_diff,step = 0.0001){
  while((f(x) - target_val) >= target_diff) {
    g = grad(f,x); # grad
    d = -(g / Norm(g)); # direction
    x = x + (d * step); # update variables
    
    d = -grad(f,(x + step * d)) / Norm(grad(f,x + step * d)); # get next direction
    
    loss_val = (f(x) - target_val)
    loss <- append(loss, loss_val);
    print(loss_val);
  }
  print('--- optimize x value ---')
  print(x)
  print('--- ---------------- ---')
  return(loss);
}
value <- array( c(12,2), dim = c(2) )
loss_data <- gradient_descent(function(x_vec) x_vec[1] * ( x_vec[2] *  x_vec[2]),value,8,0.01);
plot(unlist(loss_data))


