pragma solidity ^0.8.0;

library SimpleMath {

    function sum(uint _x, uint _y) internal pure returns (uint z) {
        return _x + _y;
    }

    function prod(uint _x, uint _y) internal pure returns (uint z) {
        return _x * _y;
    }
}
contract SimpleMathExample {
    uint public x;
    uint public y;
    uint z;
    function doStuff() public {
        x = 12;
        y = 6;
        z = SimpleMath.sum(x, y);
        z += SimpleMath.prod(2, x);
    }
}
