* Encoding: UTF-8.
MATRIX./*5-2-2 page 152.
get y/varible weight,height/missing=omit.
COMPUTE sigma={20,100;100,1000}.
COMPUTE mu0={70;170}.
COMPUTE n=nrow(y).
COMPUTE onev=make(n,1,1).
COMPUTE ybar=t(y)*onev/n.
COMPUTE z2=n*t(ybar-mu0)*inv(sigma)*(ybar-mu0).
PRINT mu0.
PRINT sigma.
PRINT ybar.
PRINT z2.
COMPUTE Zj=sqrt(n)*inv(mdiag(sqrt(diag(sigma))))*(ybar-mu0).
PRINT Zj.
COMPUTE a=inv(sigma)*(ybar-mu0).
COMPUTE astar=mdiag(sqrt(diag(sigma)))*a.
PRINT a.
PRINT astar.
end matrix.

MATRIX./*5-3-2 page 160.
get y/variable y1,y2,y3/missing=omit.
COMPUTE mu0={15.0;6.0;2.85}.
COMPUTE n=nrow(y).
COMPUTE onev=make(n,1,1).
COMPUTE onem=make(n,n,1).
COMPUTE i=ident(n).
COMPUTE ybar=(t(y)*onev)/n.
COMPUTE s=(t(y)*(i-onem/n)*y)/(n-1).
COMPUTE t2=n*t(ybar-mu0)*inv(s)*(ybar-mu0).
PRINT t2.
compute tj=sqrt(n)*inv(mdiag(sqrt(diag(s))))*(ybar-mu0).
PRINT tj.
COMPUTE a=inv(s)*(ybar-mu0).
COMPUTE astar=mdiag(sqrt(diag(s)))*a.
PRINT a.
PRINT astar.
end matrix.

MATRIX./*5-3-2 page 160.profile
get y/variable y1,y2,y3/missing=omit.
COMPUTE mu0={15.0;6.0;2.85}.
COMPUTE n=nrow(y).
COMPUTE onev=make(n,1,1).
COMPUTE onem=make(n,n,1).
COMPUTE i=ident(n).
COMPUTE ybar=(t(y)*onev)/n.
COMPUTE s=(t(y)*(i-onem/n)*y)/(n-1).
COMPUTE c={1,-1,0;1,0,-1}.
COMPUTE t2=n*t(c*ybar)*inv(c*s*t(c))*(c*ybar).
PRINT mu0.
PRINT ybar.
PRINT s.
PRINT t2.
end matrix.

MATRIX./*5-4-2 page 164.
get y1/variable y1m,y2m,y3m,y4m/missing=omit.
get y2/variable y1f,y2f,y3f,y4f/missing=omit.
COMPUTE n1=nrow(y1).
COMPUTE n2=nrow(y2).
COMPUTE onev1=make(n1,1,1).
COMPUTE onev2=make(n2,1,1).
COMPUTE onem1=make(n1,n1,1).
COMPUTE onem2=make(n2,n2,1).
COMPUTE i1=ident(n1).
COMPUTE i2=ident(n2).
COMPUTE y1bar=t(y1)*onev1/n1.
COMPUTE y2bar=t(y2)*onev2/n2.
COMPUTE s1=t(y1)*(i1-onem1/n1)*y1/(n1-1).
COMPUTE s2=t(y2)*(i2-onem2/n2)*y2/(n2-1).
COMPUTE spl=((n1-1)*s1+(n2-1)*s2)/(n1+n2-2).
COMPUTE t2=(n1*n2)*t(y1bar-y2bar)*inv(spl)*(y1bar-y2bar)/(n1+n2).
PRINT t2.
compute tj=sqrt(n1*n2/(n1+n2))*inv(mdiag(sqrt(diag(spl))))*(y1bar-y2bar).
PRINT tj.
COMPUTE a=inv(spl)*(y1bar-y2bar).
COMPUTE astar=mdiag(sqrt(diag(spl)))*a.
PRINT a.
PRINT astar.
end matrix.

MATRIX./*5-4-2 page 164.profile
get y1/variable y1m,y2m,y3m,y4m/missing=omit.
get y2/variable y1f,y2f,y3f,y4f/missing=omit.
COMPUTE n1=nrow(y1).
COMPUTE n2=nrow(y2).
COMPUTE onev1=make(n1,1,1).
COMPUTE onev2=make(n2,1,1).
COMPUTE onem1=make(n1,n1,1).
COMPUTE onem2=make(n2,n2,1).
COMPUTE i1=ident(n1).
COMPUTE i2=ident(n2).
COMPUTE y1bar=t(y1)*onev1/n1.
COMPUTE y2bar=t(y2)*onev2/n2.
COMPUTE s1=t(y1)*(i1-onem1/n1)*y1/(n1-1).
COMPUTE s2=t(y2)*(i2-onem2/n2)*y2/(n2-1).
COMPUTE spl=((n1-1)*s1+(n2-1)*s2)/(n1+n2-2).
COMPUTE c={1,-1,0,0;1,0,-1,0;1,0,0,-1}.
COMPUTE t2=(n1*n2)*t(y1bar-y2bar)*t(c)*inv(c*spl*t(c))*c*(y1bar-y2bar)/(n1+n2).
PRINT y1bar.
PRINT y2bar.
PRINT s1.
PRINT s2.
PRINT spl.
PRINT t2.
end matrix.

MATRIX./*5-5 page 171.
get y1/variable y1m,y2m,y3m,y4m/missing=omit.
get y2/variable y1f,y2f,y3f,y4f/missing=omit.
COMPUTE n1=nrow(y1).
COMPUTE n2=nrow(y2).
COMPUTE onev1=make(n1,1,1).
COMPUTE onev2=make(n2,1,1).
COMPUTE onem1=make(n1,n1,1).
COMPUTE onem2=make(n2,n2,1).
COMPUTE i1=ident(n1).
COMPUTE i2=ident(n2).
COMPUTE y1bar=t(y1)*onev1/n1.
COMPUTE y2bar=t(y2)*onev2/n2.
COMPUTE s1=t(y1)*(i1-onem1/n1)*y1/(n1-1).
COMPUTE s2=t(y2)*(i2-onem2/n2)*y2/(n2-1).
COMPUTE spl=((n1-1)*s1+(n2-1)*s2)/(n1+n2-2).
COMPUTE a=inv(spl)*(y1bar-y2bar).
PRINT a.
end matrix.

MATRIX./*5-7-2 page 179.
get y/variables omq1,tedad1/missing=omit.
get x/variables omq2,tedad2/missing=omit.
COMPUTE d=y-x.
COMPUTE n=nrow(d).
COMPUTE onev=make(n,1,1).
COMPUTE onem=make(n,n,1).
COMPUTE i=ident(n).
COMPUTE dbar=t(d)*onev/n.
COMPUTE sd=t(d)*(i-onem/n)*d/(n-1).
COMPUTE t2=n*t(dbar)*inv(sd)*dbar.
PRINT t2.
compute tj=sqrt(n)*inv(mdiag(sqrt(diag(sd))))*dbar.
PRINT tj.
COMPUTE a=inv(sd)*dbar.
COMPUTE astar=mdiag(sqrt(diag(sd)))*a.
PRINT a.
PRINT astar.
end matrix.

MATRIX./*5-8 page183.
get y/variable y1m,y2m,y3m,y4m/missing=omit.
get x/variable y1f,y2f,y3f,y4f/missing=omit.
COMPUTE n=nrow(y).
COMPUTE onev=make(n,1,1).
COMPUTE onem=make(n,n,1).
COMPUTE i=ident(n).
COMPUTE ybar=t(y)*onev/n.
COMPUTE xbar=t(x)*onev/n.
COMPUTE sy=t(y)*(i-onem/n)*y/(n-1).
COMPUTE sx=t(x)*(i-onem/n)*x/(n-1).
COMPUTE spl=((n-1)*sy+(n-1)*sx)/(n+n-2).
COMPUTE t2p.q=((n*n)*t(ybar-xbar)*inv(spl)*(ybar-xbar))/(n+n).
PRINT t2p.q.
get y2/variable y1m,y2m/missing=omit.
get x2/variable y1f,y2f/missing=omit.
COMPUTE n2=nrow(y2).
COMPUTE onev2=make(n2,1,1).
COMPUTE onem2=make(n2,n2,1).
COMPUTE i2=ident(n2).
COMPUTE ybar2=t(y2)*onev2/n2.
COMPUTE xbar2=t(x2)*onev2/n2.
COMPUTE sy2=t(y2)*(i2-onem2/n2)*y2/(n2-1).
COMPUTE sx2=t(x2)*(i2-onem2/n2)*x2/(n2-1).
COMPUTE spl2=((n2-1)*sy2+(n2-1)*sx2)/(n2+n2-2).
PRINT spl2.
COMPUTE t2p=((n2*n2)*t(ybar2-xbar2)*inv(spl2)*(ybar2-xbar2))/(n2+n2).
PRINT t2p.
COMPUTE v=32+32-2.
COMPUTE t2q..p=((v-2)*(t2p.q-t2p))/(v+t2p).
PRINT t2q..p.
end matrix.

MATRIX./*edame 5-8 page183.q=1
get y/variable y1m,y2m,y3m,y4m/missing=omit.
get x/variable y1f,y2f,y3f,y4f/missing=omit.
COMPUTE n=nrow(y).
COMPUTE onev=make(n,1,1).
COMPUTE onem=make(n,n,1).
COMPUTE i=ident(n).
COMPUTE ybar=t(y)*onev/n.
COMPUTE xbar=t(x)*onev/n.
COMPUTE sy=t(y)*(i-onem/n)*y/(n-1).
COMPUTE sx=t(x)*(i-onem/n)*x/(n-1).
COMPUTE spl=((n-1)*sy+(n-1)*sx)/(n+n-2).
COMPUTE t2p.q=((n*n)*t(ybar-xbar)*inv(spl)*(ybar-xbar))/(n+n).
PRINT t2p.q.
get y1/variable y2m,y3m,y4m/missing=omit.
get x1/variable y2f,y3f,y4f/missing=omit.
COMPUTE n1=nrow(y1).
COMPUTE onev1=make(n1,1,1).
COMPUTE onem1=make(n1,n1,1).
COMPUTE i1=ident(n1).
COMPUTE y1bar=t(y1)*onev1/n1.
COMPUTE x1bar=t(x1)*onev1/n1.
COMPUTE sy1=t(y1)*(i1-onem1/n1)*y1/(n1-1).
COMPUTE sx1=t(x1)*(i1-onem1/n1)*x1/(n1-1).
COMPUTE spl1=((n1-1)*sy1+(n1-1)*sx1)/(n1+n1-2).
COMPUTE t2p.y1=((n1*n1)*t(y1bar-x1bar)*inv(spl1)*(y1bar-x1bar))/(n1+n1).
PRINT t2p.y1.
COMPUTE v=32+32-2.
COMPUTE t2y1..p=((v-2)*(t2p.q-t2p.y1))/(v+t2p.y1).
PRINT t2y1..p.
get y2/variable y1m,y3m,y4m/missing=omit.
get x2/variable y1f,y3f,y4f/missing=omit.
COMPUTE n2=nrow(y2).
COMPUTE onev2=make(n2,1,1).
COMPUTE onem2=make(n2,n2,1).
COMPUTE i2=ident(n2).
COMPUTE y2bar=t(y2)*onev2/n2.
COMPUTE x2bar=t(x2)*onev2/n2.
COMPUTE sy2=t(y2)*(i2-onem2/n2)*y2/(n2-1).
COMPUTE sx2=t(x2)*(i2-onem2/n2)*x2/(n2-1).
COMPUTE spl2=((n2-1)*sy2+(n2-1)*sx2)/(n2+n2-2).
COMPUTE t2p.y2=((n2*n2)*t(y2bar-x2bar)*inv(spl2)*(y2bar-x2bar))/(n2+n2).
PRINT t2p.y2.
COMPUTE v=32+32-2.
COMPUTE t2y2..p=((v-2)*(t2p.q-t2p.y2))/(v+t2p.y2).
PRINT t2y2..p.
get y3/variable y1m,y2m,y4m/missing=omit.
get x3/variable y1f,y2f,y4f/missing=omit.
COMPUTE n3=nrow(y3).
COMPUTE onev3=make(n3,1,1).
COMPUTE onem3=make(n3,n3,1).
COMPUTE i3=ident(n3).
COMPUTE y3bar=t(y3)*onev3/n3.
COMPUTE x3bar=t(x3)*onev3/n3.
COMPUTE sy3=t(y3)*(i3-onem3/n3)*y3/(n3-1).
COMPUTE sx3=t(x3)*(i3-onem3/n3)*x3/(n3-1).
COMPUTE spl3=((n3-1)*sy3+(n3-1)*sx3)/(n3+n3-2).
COMPUTE t2p.y3=((n3*n3)*t(y3bar-x3bar)*inv(spl3)*(y3bar-x3bar))/(n3+n3).
PRINT t2p.y3.
COMPUTE v=32+32-2.
COMPUTE t2y3..p=((v-2)*(t2p.q-t2p.y3))/(v+t2p.y3).
PRINT t2y3..p.
get y4/variable y1m,y2m,y3m/missing=omit.
get x4/variable y1f,y2f,y3f/missing=omit.
COMPUTE n4=nrow(y4).
COMPUTE onev4=make(n4,1,1).
COMPUTE onem4=make(n4,n4,1).
COMPUTE i4=ident(n4).
COMPUTE y4bar=t(y4)*onev4/n4.
COMPUTE x4bar=t(x4)*onev4/n4.
COMPUTE sy4=t(y4)*(i4-onem4/n4)*y4/(n4-1).
COMPUTE sx4=t(x4)*(i4-onem4/n4)*x4/(n4-1).
COMPUTE spl4=((n4-1)*sy4+(n4-1)*sx4)/(n4+n4-2).
COMPUTE t2p.y4=((n4*n4)*t(y4bar-x4bar)*inv(spl4)*(y4bar-x4bar))/(n4+n4).
PRINT t2p.y4.
COMPUTE v=32+32-2.
COMPUTE t2y4..p=((v-2)*(t2p.q-t2p.y4))/(v+t2p.y4).
PRINT t2y4..p.
end matrix.

MATRIX./*5-9-2 page192.
get y1/variable y1m,y2m,y3m,y4m/missing=omit.
get y2/variable y1f,y2f,y3f,y4f/missing=omit.
COMPUTE n1=nrow(y1).
COMPUTE n2=nrow(y2).
COMPUTE onev1=make(n1,1,1).
COMPUTE onev2=make(n2,1,1).
COMPUTE onem1=make(n1,n1,1).
COMPUTE onem2=make(n2,n2,1).
COMPUTE i1=ident(n1).
COMPUTE i2=ident(n2).
COMPUTE y1bar=t(y1)*onev1/n1.
COMPUTE y2bar=t(y2)*onev2/n2.
COMPUTE s1=t(y1)*(i1-onem1/n1)*y1/(n1-1).
COMPUTE s2=t(y2)*(i2-onem2/n2)*y2/(n2-1).
COMPUTE spl=((n1-1)*s1+(n2-1)*s2)/(n1+n2-2).
COMPUTE c={-1,1,0,0;0,-1,1,0;0,0,-1,1}.
COMPUTE t2=(n1*n2)*t(y1bar-y2bar)*t(c)*inv(c*spl*t(c))*c*(y1bar-y2bar)/(n1+n2).
COMPUTE a=inv(c*spl*t(c))*c*(y1bar-y2bar).
COMPUTE n=nrow(y1bar).
COMPUTE onevt=make(n,1,1).
COMPUTE T_H02=(t(onevt)*(y1bar-y2bar))/(sqrt(t(onevt)*spl*onevt*((1/n1)+(1/n2)))).
COMPUTE ybar=(n1*y1bar+n2*y2bar)/(n1+n2).
COMPUTE T2_H03=(n1+n2)*t(c*ybar)*inv(c*spl*t(c))*c*ybar.
COMPUTE c1sample={1,-1,0,0;0,1,-1,0;1,0,0,-1}.
compute T2_1=n1*t(c1sample*y1bar)*inv(c1sample*s1*t(c1sample))*(c1sample*y1bar).
compute T2_2=n2*t(c1sample*y2bar)*inv(c1sample*s2*t(c1sample))*(c1sample*y2bar).
PRINT y1bar.
PRINT y2bar.
PRINT s1.
PRINT s2.
PRINT spl.
PRINT t2.
PRINT a.
PRINT T_H02.
PRINT ybar.
PRINT T2_H03.
PRINT T2_1.
PRINT T2_2.
end matrix.




