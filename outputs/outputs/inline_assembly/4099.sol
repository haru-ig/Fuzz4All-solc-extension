pragma solidity ^0.8.0;
contract Modifiers32x64 {
    uint constant x = 1e12;
    function test(uint x, uint) public {
        uint mul = mul(x, 32);
        mstore(x, mul);
    }
    function test2(uint y) public {
        test(y, x);
    }
}
