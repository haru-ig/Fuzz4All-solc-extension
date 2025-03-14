pragma solidity ^0.8.0;
contract MutatedExamples {
    function getUint() private pure returns(uint32) {
        return 30;
    }
    function getUintNonReturn() private pure returns(uint32) {
        return 100;

    }
}
