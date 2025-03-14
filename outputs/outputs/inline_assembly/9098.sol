pragma solidity ^0.8.0;
library Lib
{

    modifier onlyOwner {
        require(address(msg.sender) == msg.sender, 'Not the owner');
        _;
    }

    modifier onlyTest {
        require(msg.sender == address(0x6000001) || msg.sender == address(this), 'Not in testing');
        _;
    }

    modifier onlyUser {
        require(msg.sender == address(0x6000002) || msg.sender == address(this), 'Not in testing');
        _;
    }
    function div(uint a, uint b) internal pure returns (uint) {
        return (a / b);
    }
    function mul(uint a, uint b) internal pure returns (uint) {
        return (a * b);
    }
    function getDiv(uint dividend, uint divisor) internal pure returns (uint) {
        return div(dividend, divisor);
    }
}
contract C
{
    Lib.DivStruct public divStruct;
    constructor() {
        divStruct.dividend = divStruct.divisor = 1;
    }
    function foo() public returns (bool) {
        return this.divStruct.divisor!= 1;
    }
}
