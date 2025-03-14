pragma solidity ^0.8.0;
contract FallbackMutated {
    uint a;
    uint b;
    uint c;
    address d;
    function test() public returns(uint) {
        a = 3;
        b = 2;
        c = 1;
        d = address(0);
        for(uint i = 0; i<100; i++){
            c = 2;
            b = 1;
        }
        if(a < 3 || b == 2){
            b = 3;
            d = address(0);
           c = c+1;
            a = a;
        }
        if(a >= 3 || b < 3 || c < 3){
           b = b;
           d = d;
        }
        return b;
    }
    function fallback() public payable {}
}
