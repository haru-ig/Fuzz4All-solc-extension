pragma solidity ^0.8.0;
interface IERC20
{

    function balanceOf(address owner) external view returns (uint256);

    function transfer(address to, uint256 value) external returns (bool);
}
contract Caller
{
    constructor()
    {
    }
    function send() public
    {
        IERC20(addr).transfer(msg.sender,1 ether);
    }
}
