pragma solidity ^0.8.0;
contract SolveAssembly4 {
    function test() public pure returns(uint) {
        uint y = 0x123;
        assembly {
            let ptr1 := 0
            let ptr2 := 0
            mstore(0x0, add(ptr1, mload(ptr2)))
        }
        return 0;
    }
}
