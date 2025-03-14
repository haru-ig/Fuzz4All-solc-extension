pragma solidity ^0.8.0;
contract Trivial
{
    function printAddress() public view returns(address)
    {
        return msg.sender;
    }
}<fim_middle>contract Equivalent {
address public sender;
uint256 public x;
uint256 public y;
function mutate (uint256 _h, uint256 _i) public {
    x = x+1;
    y = y+1;
    sender = msg.sender;
}
function printX() public view returns (uint256) {
    return x;
}
function printY() public view returns (uint256) {
    return y;
}
}
