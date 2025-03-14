pragma solidity ^0.8.0;
contract EasierGood
{
    uint internal x;
    address owner;

    constructor() public
        {
            owner = msg.sender;
        }
    function set(uint256 _x) public
    {
        x = _x;
    }
    function call(address to, uint256 value) public
        {
        to.call{ value }("");
        }
    function send(address to, uint256 value) public
        {
        to.send{ value }("");
        }
    function send(uint256 amount) public
        {
        payable(to).send{ value : amount }("");
        }
}
