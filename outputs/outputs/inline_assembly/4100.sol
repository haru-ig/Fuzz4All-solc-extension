pragma solidity ^0.8.0;
contract Modifiers32x128 {
    uint constant x = 1e19;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(2 * x, 32))
        }
    }
}
