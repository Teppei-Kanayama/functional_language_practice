let taisho_x pair = match pair with 
  (x, y) -> (x, -y)

let chuten pair1 pair2 = match pair1 with 
  (x1, y1) -> match pair2 with
    (x2, y2) -> ((x1 +. x2) /. 2., (y1 +. y2) /. 2.)

let test1 = taisho_x (0, 0) = (0, 0)
let test2 = taisho_x (1, 2) = (1, -2)
let test3 = taisho_x (-1, -2) = (-1, 2)

let test1 = chuten (0., 0.) (0., 0.) = (0., 0.)
let test2 = chuten (0., 0.) (1., 2.) = (0.5, 1.)
let test3 = chuten (1., -1.) (1., 1.) = (1., 0.)