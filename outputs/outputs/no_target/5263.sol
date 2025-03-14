pragma solidity ^0.8.0;
contract MutatedExamples2 {
    function getUint() public pure returns (uint32) {
        uint32 x = 0;
        x += 100;
        return 14;
    }
    function mutate() public returns (uint32) {
        return getUint() + 50;
    }
}
