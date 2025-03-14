pragma solidity ^0.8.0;
contract SimpleFallback
{

        function simplefallback(uint _amount) public
        payable
        {
        if (_amount < 8)
        throw;
        }
}
