pragma solidity ^0.8.0;
contract SolveAssembly
{
    function test() public pure returns (uint) {
        assembly {
            calldataload(0x20)
            returndatacopy(0x20, 0x0, 0x14)
            jump(0x24)
        }
    }
}
