pragma solidity ^0.8.0;
contract MutateAssembly22 {
    function test() public view returns(uint) {
        (uint a, uint b, uint c) = (0x123, 0x456, 0x789);
        bytes memory t = hex"6075600080600061";
        assembly {
            let ptr := 32
            mstore(0x0, add(ptr, a))
            mstore(0x0, a)
            mstore(0x0, a)
        }
    }
}
