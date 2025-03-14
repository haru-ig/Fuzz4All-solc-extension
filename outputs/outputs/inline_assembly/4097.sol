pragma solidity ^0.8.0;
contract Modifiers32x64 {
    uint constant x = 1e12;
    function test(uint, uint) public {
        assembly {
            mstore(y, mul(x, 32))
        }
    }
    function test2(uint) public {
        test(x, y);
    }
}
