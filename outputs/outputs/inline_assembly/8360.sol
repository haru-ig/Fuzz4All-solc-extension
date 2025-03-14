pragma solidity ^0.8.0;
contract SolveAssembly {
    function test() public pure returns(uint) {
        uint i = gas();
        assembly {
            mstore(0x0, i)
        }
        return 0;
    }
}
