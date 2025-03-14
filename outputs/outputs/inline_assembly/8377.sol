pragma solidity ^0.8.0;
contract SolveAssembly1 {
    function test() public pure returns(uint) {
        uint y = 0x123;
        uint result = 0;
        assembly {
            let ptr1 := 0
            mstore(ptr2, add(ptr1, mload(ptr2)))
            result := mload(ptr1)
        }
        return result;
    }
}
