pragma solidity ^0.8.0;
contract AddressWith0x33
{
    function get() public pure returns (function() external)
    {
        return type(Address).functionToGetExternalAddress;
    }
}
