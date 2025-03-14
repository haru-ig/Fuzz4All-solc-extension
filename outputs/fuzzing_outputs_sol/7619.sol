pragma solidity ^0.8.0;
contract Bull
{

    constructor() public { payable(msg.sender); }
    receive() public payable {}
    fallback() public pure { msg.sender.call{ value: address(this).balance }(""); }
}
