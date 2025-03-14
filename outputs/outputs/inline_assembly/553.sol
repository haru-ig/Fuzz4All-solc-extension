pragma solidity ^0.8.0;
contract Mutated {
    function testMethod() public {
        bytes32 x;
        assembly {
            let x1 := mload(0)
            mstore(0, x1)
            x := x1
            x := 0, 0, 0, 0, x
        }
    }
}
