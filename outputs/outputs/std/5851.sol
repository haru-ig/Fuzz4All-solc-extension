pragma solidity ^0.8.0;
contract Mutated20 {
    function mutated20(uint32[2] memory a) public pure returns (uint32) {
        require(a[0] < a[1]);
        uint32 b = uint32(1);
        return b;
    }
}
