pragma solidity ^0.8.0;
contract F7 {
    uint a;
    constructor() {
        a = 1;
    }
    function modify(uint x, uint y) public {
        a = x + (x**((x-2)/(x-1)))*(x-(1+x)/x);
    }
    function divide(uint x, uint y) public {
        a = x/(x+(x-1)/(x-1))*(x+((x-2)/x))*(x-((x+((x-1)/x))/x));
    }
}
