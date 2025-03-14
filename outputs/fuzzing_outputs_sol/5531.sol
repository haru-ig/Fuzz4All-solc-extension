pragma solidity ^0.8.0;
contract failuremutablefallbacksemantic_immutable
{
    function f() external view returns (uint) {
        return n;
    }
}
contract fallbackimmutablefallbacksemantic
{
    bool flag = false;
    constructor() public {

        Caller memory memory = new Caller();
        memory.setflag(1);
        address callToAddress = address(memory);
        callToAddress.call{value: 1 ether}(new bytes{1}('\x00'));
    }
    function setflag(uint f) public {
        flag = (f > 0);
    }
    bool getflag() public pure {
        return flag;
    }
}
contract Caller
{
    uint flag;
    receive() external payable {
        return;
    }
    uint myPublicMethod() public view returns (uint) {
        return flag;
    }
    function setflag(uint f) public {
        flag = f;
    }
    bool getflag() public pure {
        return flag > 0;
    }
}
