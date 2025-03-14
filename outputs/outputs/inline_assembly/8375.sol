pragma solidity ^0.8.0;
contract SolveAssembly4 {
    function test() public pure returns(uint) {
        uint y = 0x123;
        uint x = y;
        for (uint i = 0; i < y; i++) {
            x = x + i;
        }
        uint y2 = x;
        assembly {
            let ptr1 := 0
            let ptr2 := 0
            mstore(0x0, add(ptr1, mload(ptr2)))
        }
        return 0;
    }
}
