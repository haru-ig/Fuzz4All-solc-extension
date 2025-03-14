pragma solidity ^0.8.0;
contract MovedSemantics {
    uint256 internal a;
    uint256 internal b;
    uint256 internal c;
    address internal d;
    modifier test{
        a = 3;
        b = 2;
        c = 1;
        d = address(0);
        c = 2;
        b = 1;
        a = 2;
        b = b+1;
        if(a > 2 || b < 1 || a > 3){
            if(a>2){
                c+=1;
                if(d!=address(0)){
                    c+=1;
                }
            }
            b = c / 3;
            c = a*b;
            a = a +1;
            d = address(0);
            if(a >= 3 || b <= 2){
                if(a>2) d = address(0);
                b = 3;
                a = a+1;
            }
            if(a>=3 || d!=address(0)){
                b += c;
                d = address(0);
            }
        }
        b = 1;
        c = 2;
        a = 2;
        if(c!= 0) b -= b;
        if(d!= address(0)) c = 2;
        b += c;
        a += c;
        b = b - 1;
        a -= 1;
        if(c!= 0){
            b = a+b;
            a = 2;
            c = 0;
            d = address(0);
            c = 2;
        }
        if(a >= 3 || b <= 2){
            if(a>2){
                c = c+1;
            }
            c /= 3;
            b = b-b;
            b +=3;
            c = a*b;
            b = a*b;
            a = a+1;
            b = 2;
        }
        if(d!= address(0)) c = 2;
        b = b + c;
        a *= c;
        if(b >= 3 || c <= 2){
            if(b> 2){
                b = a-a;
                c = 2;
            }
            a -= 2;
            a += c;
            if(a> 3){
                a = 3;
            }
            if(a==3) v = address(0);
            c = c-3;
        }
        if(d!= address(0)) b
