pragma solidity ^0.8.0;
contract Equivalent {
    function testMethod() public pure {
        uint32 x;
        uint32 y;
        assembly {
            x := 2
            y := sub(div(add(mload(x), mload(0)), 2), 2)
        }
    }
}
