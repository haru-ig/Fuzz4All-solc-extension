pragma solidity ^0.8.0;
contract AddressModification
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    fallback() payable external
    {
        addr.transfer(msg.value);
    }
    receive() payable external
    {
    }
}

pragma solidity ^0.8.0;
contract ChangeAddress {
    address public immutable newAddr;
    address public immutable oldAddr;
    constructor(address _newAddr, uint _uint) {
        newAddr = _newAddr;
        oldAddr = newAddr;
        newAddr.transfer(_uint);
    }
}
