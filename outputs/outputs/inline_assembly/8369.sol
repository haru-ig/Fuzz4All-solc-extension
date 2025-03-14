pragma solidity ^0.8.0;
contract SolveAssembly3 {
    function test() public pure returns(uint) {
        uint y = 0x123;
        assembly {
            let ptr1 := 0
            let ptr2 := 0
            let p1 := mload(add(ptr1, mload(ptr2)))
            let p2 := mload(add(ptr1, mload(0x0)))
        }
        return 0;
    }
}
