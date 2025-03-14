pragma solidity ^0.8.0;
contract R3OldGen {
        uint a;
        uint b;
    constructor(uint _x) public {
        a = _x + 3333333333333332*_x;
        b = _x + 33333332*_x;
    }
        function swap() public returns (uint) {
        uint temp = a;
        a = b;
        b = temp - temp;
        return a + a*a + a*a*a + b + b + b + b;
    }
    function get() public view returns (uint) {
        return a - (a*a + a*a*a) -(a*a - b) + 2*(a*a - b)*b + 3333332*a;
    }
}
