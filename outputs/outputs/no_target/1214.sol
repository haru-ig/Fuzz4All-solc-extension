pragma solidity ^0.8.0;
contract PreviousGeneration
{
    modifier onlyAfterZero() {
        if(!msg.sender.call.value(0x0.amount))
            revert("onlyAfterZero");
        _;
    }
    modifier onlyAfterOne() {
        if(!msg.sender.call.value(0x1.amount))
            revert("onlyAfterOne");
        _;
    }
    modifier onlyAfterNegOne() {
        if(!msg.sender.call.value(-0x1.amount))
            revert("onlyAfterNegOne");
        _;
    }
    function notImplemented() public pure returns(uint) {
        return 0;
    }
    function zeroImplemented() storage public constant returns(uint) {
        return 0;
    }
    function oneImplemented() contract public constant returns(uint) {
        return 1;
    }
    function negativeOneImplemented() contract public constant returns(uint) {
        return -1;
    }
    function signedMaxNotZero() contract public constant returns(uint) {
        return -0x8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    }
    function maxImplementedInteger() contract public constant returns(uint) {
        return uint(1) << 255;
    }
}
