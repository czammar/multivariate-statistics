* Encoding: UTF-8.

MATRIX./*7-3-2 page 269.
get y1/variable y1m,y2m,y3m,y4m/missing=omit.
get y2/variable y1f,y2f,y3f,y4f/missing=omit.
COMPUTE n1=nrow(y1).
COMPUTE n2=nrow(y2).
COMPUTE onem1=make(n1,n1,1).
COMPUTE onem2=make(n2,n2,1).
COMPUTE i1=ident(n1).
COMPUTE i2=ident(n2).
COMPUTE s1=t(y1)*(i1-onem1/n1)*y1/(n1-1).
COMPUTE s2=t(y2)*(i2-onem2/n2)*y2/(n2-1).
COMPUTE spl=((n1-1)*s1+(n2-1)*s2)/(n1+n2-2).
COMPUTE lnm=((n1-1)*ln(det(s1))+(n2-1)*ln(det(s2)))/2-(n1+n2-2)*ln(det(spl))/2.
COMPUTE boxm=-2*lnm.
PRINT s1.
PRINT s2.
PRINT spl.
PRINT lnm.
PRINT boxm.
end matrix.