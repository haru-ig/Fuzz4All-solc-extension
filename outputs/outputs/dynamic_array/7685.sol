pragma solidity ^0.8.0;
contract Test18_semanticsSame_3{
            uint[] a;
            uint[] b;
            uint[] c;
            uint d;
            function a(uint a, uint b, uint c) public{
                a=a-(a.push(C[1].sub(8))/3);
                a=a-(a.push(C[1].sub(8))/3);
                b=b-(b.push(A.sub(8))/3);
                b=b-(b.push(A.sub(8))/3);
                c=c-(c.push(D.sub(8))/3);
                c=c-(c.push(D.sub(8))/3);
                a = 0;
            }
            function b(uint a, uint b) public {
                a=a-(a.push(B.sub(8))/3);
                a=a-(a.push(B.sub(8))/3);
                b=b-(b.push(a.pop()+8)/3);
                b=b-(b.push(a.pop()+8)/3);
                b=b-(b.push(A.sub(8))/3);
                b=b-(b.push(A.sub(8))/3);
                b=b-(b.push(A.sub(8))/3);
                b=b-(b.push(a.pop()+8)/3);
                b=b-(b.push(a.pop()+8)/3);
                a = 0;
            }
            function c(uint a, uint b, uint c) public{
                a=a-(a.push(c.sub(8))/3);
                a=a-(a.push(c.sub(8))/3);
                b=b-(b.push(c.sub(c.pop()+8))/3);
                b=b-(b.push(c.sub(c.pop()+8))/3);
                c=c-(c.push(C[0].add(8))-8)/3;
                c=c-(c.push(C[0].add(8))-8)/3;
                a=0;
            }
    }
