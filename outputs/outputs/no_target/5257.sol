pragma solidity ^0.8.0;
contract MutatedExamples {
    function getUint() internal pure returns(uint32) {
        return 30;
    }
    function getUintNonReturn() internal pure returns(uint32) {
        uint32 x = 0;
        x += 100;
        return 14;
    }
}
