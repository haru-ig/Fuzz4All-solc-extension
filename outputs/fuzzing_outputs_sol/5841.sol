pragma solidity ^0.8.0;
contract FixedSemantics {
    uint a;
    uint b;
    uint c;
    address d;
    function test() public {
        a = 3;
        b = 2;
        c = 1;
        d = address(0);
        a +=3;
        b +=1;
        if(a >=3 || b <= 2){
            if(a==2) d = address(0);
            b +=3;
            a +=1;
        }
        if(d!= address(0)){
            d = d;
        }
    }
}
