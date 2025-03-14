pragma solidity ^0.8.0;
contract ModifiedEquivalent
{

    function _modifiedSendEther(uint x, address addr) internal payable{
        Equivalent(addr).modifiedSendEther(x, addr);
    }
    function modifiedSendEther(uint x, address addr) public payable{
        _modifiedSendEther(x, addr);
    }
}
