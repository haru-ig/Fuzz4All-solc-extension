pragma solidity ^0.8.0;
contract MutatedExamples3 {
    function getUint16() private pure returns (uint16) {
        uint16 x = 0;
        x += 100;
        return 14;
    }
    function mutate() public mutate2 {
        return getUint16() + 50;
    }
    function mutate2(uint16 x) public returns (uint16) {
        return x + 50;
    }
}
