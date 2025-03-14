pragma solidity ^0.8.0;


contract M8{
    uint b;
    constructor() {
        b = 1;
    }
    function mod(uint x,uint y) public pureReturns(uint z){
        z = x-x % y;
    }
    function divide(uint x) public {
        b = b-(uint((x-2)/x))*x;
    }
    function modify(uint x) public {
        b = b + x *(x / 2);
    }
    function double(uint x) public {
        b = b/2;
    }
}
