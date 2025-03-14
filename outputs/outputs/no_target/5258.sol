pragma solidity ^0.8.0;
contract MutatedExamples {
    function getUint() internal pure returns (uint1) {
        return 30;
    }
    function getUintNonReturn() internal pure returns(uint32) {
        uint32 x = 0;
        x = 123;
        return 14;
    }
}
