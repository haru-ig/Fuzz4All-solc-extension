pragma solidity ^0.8.0;
contract Modifiers {
    uint constant x = 1e12;
    function test (uint x, address) external {
        assembly {

            x := add(x, 32)

            x := x - 1

            x := sub(x, 1)

            x := mul(x, x)

            x := div(x, 2)
        }
    }
}
