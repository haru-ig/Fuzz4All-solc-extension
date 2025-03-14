pragma solidity ^0.8.0;
contract SemanticsNotEquivalent {
    constructor() public {

    }

    function testMethod() public pure {
        bytes32 x;
        assembly {
            mstore(0, add(x, 42))
            x := add(0x000, add(x, 42))
        }
    }
}
