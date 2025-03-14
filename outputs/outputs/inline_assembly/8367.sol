pragma solidity ^0.8.0;
contract SolveAssembly3 {
    function test() public pure returns(uint) {
        uint y = 0x123;
        assembly {
            let x := mload(add(32, 0x0))
            let y := mload(add(32, 0x0))
        }
    }
}
