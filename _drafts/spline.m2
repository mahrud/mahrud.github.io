restart
R = QQ[a,b,c,d,t]
P = a*t^3 + b * t^2 + c * t + d
P' = diff(t, P)

A = 0
B = 1

m = transpose (
    (matrix 0_(R^3) || (last coefficients(sub(P, t=>A)))) |
    (last coefficients(sub(P, t=>B))) | 
    (matrix 0_(R^2) || (last coefficients(sub(P', t=>A))) || matrix 0_(R^1)) | 
    ((last coefficients(sub(P', t=>B))) || matrix 0_(R^1))
    )

matrix {{t^3, t^2, t^1, 1}} * (inverse m) * transpose matrix {{-1/2, 3/2, -3, -2/5}}


-*
A = -2
B = 3

m = transpose (
    (last coefficients(sub(P, t=>A))) |
    (last coefficients(sub(P, t=>B))) | 
    ((last coefficients(sub(P', t=>A))) || matrix 0_(R^1)) | 
    ((last coefficients(sub(P', t=>B))) || matrix 0_(R^1))
    )
*-
