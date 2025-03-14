pragma solidity ^0.8.0;
contract Comp3
{
    function setx() public {
        msg.sender.transfer(address(this).balance);
    }
    function check0() public view returns(uint)
    {
        return a;
    }
    function check1(uint _a) public view  returns(uint)
    {
        return a;
    }
}
