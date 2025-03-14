pragma solidity ^0.8.0;
contract SolveAssembly2 {
    function test() public pure returns(uint) {
        uint y = 0x123;
        assembly {
            let ptr := 32
            let p := mload(add(ptr, mload(0x0)))
            let p2 := mload(add(ptr, mload(0x0)))
            mstore(0x0, p)
            mstore(0x0, p2)
        }
        return 0;
    }
}
