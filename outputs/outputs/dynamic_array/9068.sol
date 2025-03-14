pragma solidity ^0.8.0;

contract Test
{
    constructor ()
    {

        storeWithSize([]);
    }

    IAddressable public addressable;
    event Emitted2(uint[] entries);
    function storeWithSize(uint[] calldata data) public returns (bool)
    {
        addressable.storeWithSize(data);
        return true;
    }
}
