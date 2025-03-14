pragma solidity ^0.8.0;
contract fallbackcontract
{
    function withdraw() public payable returns(uint256)
    {
       revert(18340);
    }
}
