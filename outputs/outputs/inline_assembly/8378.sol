pragma solidity ^0.8.0;
contract SolveAssembly3 {
    function test() public pure returns(uint) {
        uint y = 0x123;
        assembly {
            store(add(ptr, 0), mload(ptr))
            ptr := add(ptr, 0x1)
        }
        return 0;
    }
}
