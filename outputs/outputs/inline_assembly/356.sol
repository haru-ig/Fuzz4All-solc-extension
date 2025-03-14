pragma solidity ^0.8.0;
contract F7 {
    uint public a;
    constructor() {
        a = 1;
    }
    function modify(uint x, uint y) public {
        a = uint(x*(pow(double(x*((x-2)/x)),y))/(2*x*x)));
    }
    function divide(uint x, uint y) public {
        a = int(x*(pow(double(x*((x+((x-1)/x))/x)),y))/(2*x*x)));
    }
    function double(uint x) public pure returns (uint) {
        return 2*x;
    }
}
