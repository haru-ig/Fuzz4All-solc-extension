pragma solidity ^0.8.0;
contract M9 {
    uint b;
    constructor(uint _x) {
        b = 1 + _x;
   }
    function divide(uint x) public {
        b = b-(2*x);
    }
    function divide2(uint x) public {
        b = 1 + (x*(x-(x/2)));
    }
}
