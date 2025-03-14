pragma solidity ^0.8.0;
contract OriginalExamples {
    function getUint() public pure returns(uint32) {
        return 9;
    }
    function getUintNonReturn() returning() public pure returns(uint32) {
        uint32 x = 0;
        x = 9;
        return 115;
    }
}
contract NewExamples {
    function getUintNonReturn() public view returns(uint32) {
        uint32 x = 0;
        x = 123;
        return 30;
    }
}
