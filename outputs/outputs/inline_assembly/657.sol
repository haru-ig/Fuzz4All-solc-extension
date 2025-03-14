pragma solidity ^0.8.0;
contract Mutator2 {
    constructor() public {}
    function testMethod(int v) public pure {
        assembly {
            let x := mload(add(0x60, v))
            mstore(add(0x40, v), x)
        }
    }
}
