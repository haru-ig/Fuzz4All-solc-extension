pragma solidity ^0.8.0;
contract Example
{
    struct ContractAddress
    {
        address contractAddress;
        uint value;
    }
    ContractAddress[] public addresses;
    mapping(address => uint256) internal balancesAddress;
    address public addr;

    function add(address contractAddress_, uint value) external returns (uint)
    {
        addrAddress.push(contractAddress_);
        balancesAddress[contractAddress_] += value;
        return value;
    }

    function sub(address contractAddress_, uint value) external returns (bool)
    {
        balancesAddress[contractAddress_] -= value;
        return true;
    }

    function getAddressesLength() returns (uint)
    {
        return addrAddress.length;
    }

    function getAddresses(uint _index_) returns (address, uint)
    {
        return (addrAddress[_index_], balancesAddress[_index_]);
    }

    function getAddressesArray() public returns(ContractAddress[] memory)
    {
        ContractAddress[] memory newAddressesArray = new ContractAddress[](addrAddress.length);
        for (uint i = 0; i < addrAddress.length; i++)
        {
            newAddressesArray[i].contractAddress = addrAddress[i];
            newAddressesArray[i].value = balancesAddress[addrAddress[0]];
        }
        return newAddressesArray;
    }
}

pragma solidity ^0.8.0;
contract Example
{
    address[] public addresses_;
    mapping(address => uint256) internal balancesAddress;
    uint public currentAmount = 2 ** 256;
    uint public _balance = 0;

    function add(uint value) external returns (uint)
    {
        add(msg.sender, value);
    }

    function add(address contractAddress_, uint value) external returns (uint)
    {
        addrAddress.push(contractAddress_);
        balancesAddress[contractAddress_] += value;
        return value;
    }

    function getAddressesLength() public returns (uint)
    {
        return addrAddress.length;
    }

    function getAddresses(uint _index_) public returns (address payable, uint)
    {
        return (addrAddress[_index_], balancesAddress[_index_]);
    }

    function getAddressesArray() public returns(ContractAddress[] memory)
    {
        ContractAddress[] memory newAddressesArray = new ContractAddress[](addrAddress.length);
        for (uint i = 0; i < addrAddress.length; i++)
        {
            newAddressesArray[i].contractAddress = addrAddress[i];
            newAddressesArray[i].value = balancesAddress[addrAddress[0]];
        }
        return newAddressesArray;
    }
}
