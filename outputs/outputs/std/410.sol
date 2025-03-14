pragma solidity ^0.8.0;
contract Test {
    constructor(uint a) public {
    }
    function test() public pure {
        uint x = 6545677;
        x = 123;
        x = x^x^x;
        x = x^x;
        x = x^x^x^x^x^x^x;
        (x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x) = (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16);
        uint8 v = 3;
        v = int8(v);
    }
}
