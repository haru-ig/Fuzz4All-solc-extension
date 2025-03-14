pragma solidity ^0.8.0;
contract SolveAssembly3 {
    function test() public pure returns(uint) {
        uint y = 0x123;
        assembly {
            sstore(32, 0xab)
            sstore(64, 0xcd)
            sstore(96, 0xef)
        }
        return 0;
    }
}
