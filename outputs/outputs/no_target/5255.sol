pragma solidity ^0.8.0;
contract MutatedExamples {
    function getUint() internal pure returns (uint) {
        return 30;
    }
    function getUintNonReturn() internal pure returns(uint) {
        uint x = 0;
        x = 123;
        return 14;
    }
}
