pragma solidity ^0.8.0;
contract Baz {
    uint public x = 3;
    uint public y = '4';
    uint public z = "3" * 10;
}

contract TestContract is Baz {
    function f() public returns (uint) {
        (uint a, uint b, uint c) = (x, y, z);
        return a + b + c;
    }
}
