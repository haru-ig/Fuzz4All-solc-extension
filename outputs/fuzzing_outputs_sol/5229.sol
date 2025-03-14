pragma solidity ^0.8.0;
contract Mutator
{
        address payable public payee;
        function c() public
        {
                msg.sender.transfer(msg.value);
                throw;
        }
        function d() public
        {
                payee = msg.sender;
                throw;
        }
}
