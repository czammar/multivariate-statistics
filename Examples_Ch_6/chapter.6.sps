* Encoding: UTF-8.
MATRIX./*6-7-1 page 183.
get y/variable y1,y2,y3,y4/missing=omit.
get y1/variable y11,y12,y13,y14/missing=omit.
get y2/variable y21,y22,y23,y24/missing=omit.
get y3/variable y31,y32,y33,y34/missing=omit.
get y4/variable y41,y42,y43,y44/missing=omit.
get y5/variable y51,y52,y53,y54/missing=omit.
get y6/variable y61,y62,y63,y64/missing=omit.
COMPUTE n=nrow(y).
COMPUTE onev=make(n,1,1).
COMPUTE onem=make(n,n,1).
COMPUTE i=ident(n).
COMPUTE n1=nrow(y1).
COMPUTE onev1=make(n1,1,1).
COMPUTE onem1=make(n1,n1,1).
COMPUTE i1=ident(n1).
COMPUTE n2=nrow(y2).
COMPUTE onev2=make(n2,1,1).
COMPUTE onem2=make(n2,n2,1).
COMPUTE i2=ident(n2).
COMPUTE n3=nrow(y3).
COMPUTE onev3=make(n3,1,1).
COMPUTE onem3=make(n3,n3,1).
COMPUTE i3=ident(n3).
COMPUTE n4=nrow(y4).
COMPUTE onev4=make(n4,1,1).
COMPUTE onem4=make(n4,n4,1).
COMPUTE i4=ident(n4).
COMPUTE n5=nrow(y5).
COMPUTE onev5=make(n5,1,1).
COMPUTE onem5=make(n5,n5,1).
COMPUTE i5=ident(n5).
COMPUTE n6=nrow(y6).
COMPUTE onev6=make(n6,1,1).
COMPUTE onem6=make(n6,n6,1).
COMPUTE i6=ident(n6).
COMPUTE m1=t(y1)*onev1/n1.
COMPUTE m2=t(y2)*onev2/n2.
COMPUTE m3=t(y3)*onev3/n3.
COMPUTE m4=t(y4)*onev4/n4.
COMPUTE m5=t(y5)*onev5/n5.
COMPUTE m6=t(y6)*onev6/n6.
COMPUTE s=t(y)*(i-onem/n)*y/(n-1).
COMPUTE s1=t(y1)*(i1-onem1/n1)*y1/(n1-1).
COMPUTE s2=t(y2)*(i2-onem2/n2)*y2/(n2-1).
COMPUTE s3=t(y3)*(i3-onem3/n3)*y3/(n3-1).
COMPUTE s4=t(y4)*(i4-onem4/n4)*y4/(n4-1).
COMPUTE s5=t(y5)*(i5-onem5/n5)*y5/(n5-1).
COMPUTE s6=t(y6)*(i6-onem6/n6)*y6/(n6-1).
COMPUTE mt=(48-1)*s.
COMPUTE me=7*(s1+s2+s3+s4+s5+s6).
COMPUTE mh=mt-me.
COMPUTE lambda=det(me)/(det(mh+me)).
COMPUTE u=chol(me).
COMPUTE landa=inv(t(u))*mh*inv(u).
call eigen(landa,eigenv,eigenval).
COMPUTE Us=msum(eigenval).
COMPUTE USTAT=42*Us/5.
COMPUTE vs=msum(eigenval/(1+eigenval)).
COMPUTE teta=eigenval(1)/(1+eigenval(1)).
PRINT m1.
PRINT m2.
PRINT m3.
PRINT m4.
PRINT m5.
PRINT m6.
PRINT s.
PRINT s1.
PRINT s2.
PRINT s3.
PRINT s4.
PRINT me.
PRINT mt.
PRINT mh.
PRINT lambda.
PRINT landa.
PRINT eigenval.
PRINT US.
PRINT USTAT.
PRINT vs.
PRINT teta.
end matrix.


MATRIX./*6-8-1 page 188.
get y/variable y1,y2,y3,y4/missing=omit.
get y1/variable y11,y12,y13,y14/missing=omit.
get y2/variable y21,y22,y23,y24/missing=omit.
get y3/variable y31,y32,y33,y34/missing=omit.
get y4/variable y41,y42,y43,y44/missing=omit.
get y5/variable y51,y52,y53,y54/missing=omit.
get y6/variable y61,y62,y63,y64/missing=omit.
COMPUTE n=nrow(y).
COMPUTE onev=make(n,1,1).
COMPUTE onem=make(n,n,1).
COMPUTE i=ident(n).
COMPUTE n1=nrow(y1).
COMPUTE onev1=make(n1,1,1).
COMPUTE onem1=make(n1,n1,1).
COMPUTE i1=ident(n1).
COMPUTE n2=nrow(y2).
COMPUTE onev2=make(n2,1,1).
COMPUTE onem2=make(n2,n2,1).
COMPUTE i2=ident(n2).
COMPUTE n3=nrow(y3).
COMPUTE onev3=make(n3,1,1).
COMPUTE onem3=make(n3,n3,1).
COMPUTE i3=ident(n3).
COMPUTE n4=nrow(y4).
COMPUTE onev4=make(n4,1,1).
COMPUTE onem4=make(n4,n4,1).
COMPUTE i4=ident(n4).
COMPUTE n5=nrow(y5).
COMPUTE onev5=make(n5,1,1).
COMPUTE onem5=make(n5,n5,1).
COMPUTE i5=ident(n5).
COMPUTE n6=nrow(y6).
COMPUTE onev6=make(n6,1,1).
COMPUTE onem6=make(n6,n6,1).
COMPUTE i6=ident(n6).
COMPUTE m1=t(y1)*onev1/n1.
COMPUTE m2=t(y2)*onev2/n2.
COMPUTE m3=t(y3)*onev3/n3.
COMPUTE m4=t(y4)*onev4/n4.
COMPUTE m5=t(y5)*onev5/n5.
COMPUTE m6=t(y6)*onev6/n6.
COMPUTE s=t(y)*(i-onem/n)*y/(n-1).
COMPUTE s1=t(y1)*(i1-onem1/n1)*y1/(n1-1).
COMPUTE s2=t(y2)*(i2-onem2/n2)*y2/(n2-1).
COMPUTE s3=t(y3)*(i3-onem3/n3)*y3/(n3-1).
COMPUTE s4=t(y4)*(i4-onem4/n4)*y4/(n4-1).
COMPUTE s5=t(y5)*(i5-onem5/n5)*y5/(n5-1).
COMPUTE s6=t(y6)*(i6-onem6/n6)*y6/(n6-1).
COMPUTE mt=(48-1)*s.
COMPUTE me=7*(s1+s2+s3+s4+s5+s6).
COMPUTE mh=mt-me.
COMPUTE lambda=det(me)/(det(mh+me)).
COMPUTE u=chol(me).
COMPUTE landa=inv(t(u))*mh*inv(u).
call eigen(landa,eigenv,eigenval).
COMPUTE Us=msum(eigenval).
COMPUTE USTAT=42*Us/5.
COMPUTE vs=msum(eigenval/(1+eigenval)).
COMPUTE teta=eigenval(1)/(1+eigenval(1)).
COMPUTE slambda=1-lambda.
COMPUTE steta=teta.
COMPUTE s2lambda=1-lambda**(1/4).
COMPUTE svs=vs/4.
COMPUTE sus=(us/4)/(1+(us/4)).
PRINT slambda.
PRINT steta.
PRINT s2lambda.
PRINT svs.
PRINT sus.
end matrix.

MATRIX./*2-3-6 page 235.
get y/variable y1,y2,y3,y4/missing=omit.
get y1/variable y11,y12,y13,y14/missing=omit.
get y2/variable y21,y22,y23,y24/missing=omit.
get y3/variable y31,y32,y33,y34/missing=omit.
get y4/variable y41,y42,y43,y44/missing=omit.
get y5/variable y51,y52,y53,y54/missing=omit.
get y6/variable y61,y62,y63,y64/missing=omit.
COMPUTE n=nrow(y).
COMPUTE onev=make(n,1,1).
COMPUTE onem=make(n,n,1).
COMPUTE i=ident(n).
COMPUTE n1=nrow(y1).
COMPUTE onev1=make(n1,1,1).
COMPUTE onem1=make(n1,n1,1).
COMPUTE i1=ident(n1).
COMPUTE n2=nrow(y2).
COMPUTE onev2=make(n2,1,1).
COMPUTE onem2=make(n2,n2,1).
COMPUTE i2=ident(n2).
COMPUTE n3=nrow(y3).
COMPUTE onev3=make(n3,1,1).
COMPUTE onem3=make(n3,n3,1).
COMPUTE i3=ident(n3).
COMPUTE n4=nrow(y4).
COMPUTE onev4=make(n4,1,1).
COMPUTE onem4=make(n4,n4,1).
COMPUTE i4=ident(n4).
COMPUTE n5=nrow(y5).
COMPUTE onev5=make(n5,1,1).
COMPUTE onem5=make(n5,n5,1).
COMPUTE i5=ident(n5).
COMPUTE n6=nrow(y6).
COMPUTE onev6=make(n6,1,1).
COMPUTE onem6=make(n6,n6,1).
COMPUTE i6=ident(n6).
COMPUTE s=t(y)*(i-onem/n)*y/(n-1).
COMPUTE s1=t(y1)*(i1-onem1/n1)*y1/(n1-1).
COMPUTE s2=t(y2)*(i2-onem2/n2)*y2/(n2-1).
COMPUTE s3=t(y3)*(i3-onem3/n3)*y3/(n3-1).
COMPUTE s4=t(y4)*(i4-onem4/n4)*y4/(n4-1).
COMPUTE s5=t(y5)*(i5-onem5/n5)*y5/(n5-1).
COMPUTE s6=t(y6)*(i6-onem6/n6)*y6/(n6-1).
COMPUTE mt=(48-1)*s.
COMPUTE me=7*(s1+s2+s3+s4+s5+s6).
COMPUTE bc1={2;-1;-1;-1;-1;2}.
COMPUTE y1bar=t(y1)*onev1/n1.
COMPUTE y2bar=t(y2)*onev2/n2.
COMPUTE y3bar=t(y3)*onev3/n3.
COMPUTE y4bar=t(y4)*onev4/n4.
COMPUTE y5bar=t(y5)*onev5/n5.
COMPUTE y6bar=t(y6)*onev6/n6.
PRINT y1bar.
PRINT y2bar.
PRINT y3bar.
PRINT y4bar.
PRINT y5bar.
PRINT y6bar.
COMPUTE ybarha={y1bar,y2bar,y3bar,y4bar,y5bar,y6bar}.
PRINT ybarha.
COMPUTE a1=8/(t(bc1)*bc1).
PRINT a1.
COMPUTE b1=ybarha*bc1.
PRINT b1.
COMPUTE h1=a1*b1*t(b1).
PRINT h1.
COMPUTE rankh1=rank(h1).
PRINT rankh1.
COMPUTE bc2={1;0;0;0;0;-1}.
COMPUTE a2=8/(t(bc2)*bc2).
COMPUTE b2=ybarha*bc2.
COMPUTE h2=a2*b2*t(b2).
PRINT h2.
COMPUTE habmda1=det(me)/(det(me+h1)).
COMPUTE habmda2=det(me)/(det(me+h2)).
PRINT habmda1.
PRINT habmda2.
end matrix.


