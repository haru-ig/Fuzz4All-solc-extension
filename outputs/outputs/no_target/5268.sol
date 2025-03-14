pragma solidity ^0.8.0;
contract MutatedExamples3 {
    function getUint16() private pure returns (uint16) {
        uint16 x = 0;
        x += 100;
        return 14;
    }
    function mutate() public returns (uint16) {
        return getUint16() + 50;
    }
}
