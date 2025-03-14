pragma solidity ^0.8.0;
contract ReplacedSemantics {
    uint a;
    uint b;
    address c;
    address d;
    function test()
        public
        pure
        returns(uint)
    {
        a = 3;
        b = 2;
        c = 1;
        d = address(0);
        c = 2;
        b = 1;
        a = 2;
        b = b+1;
        if(a >= 3 || b <= 2){
            if(a==2) d = 0x0;
            b = 3;
            a = a+1;
        }
        if(d!= address(0)){
            d = d;
        }
        return b;
    }
}
