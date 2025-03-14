pragma solidity ^0.8.0;
contract Mutated18_2 {
    function mutated18(uint32[2] memory a) public pure returns (uint32[2]) {
        return [uint32(2), a[1]];
    }
}
