pragma solidity ^0.8.0;
contract Bad
{
    struct Person
    {
        mapping (address => uint[]) balances;
        uint[] bips;
    }
    address owner;
    Person public account;

    function isEther(address a) pure public returns(bool) {
        bytes memory b = type(address).creationCode;
        address addr = a;
        assembly {
        calldatacopy(0, 0, bytes(b).sub(0x3c00))
        calldatacopy(0, 0, 0x3c00)
        mstore(0x3c00, mload(calldataload(0)))
        mstore(add(0x3c04, 0x20), arg0)
        mstore(0x3c3c, arg1)
        mstore(0x403e, arg2)

        mstore(0x3c40, add(0x3c3c, 0x20))
        mstore(0x3d65, add(0x3c2c, 0x20))
        mstore(0x3ff0, 0x00)
        mstore(0x403e, mload(0x3ff0))
        mstore(0x403f, mload(0x3d65))
        mstore(0x4040, mload(0x3c3c))
        mstore(0x4041, mload(0x3c40))
        mstore(mload(0x403e), 0x71656e43)
        mstore(mload(0x403f), 0x6d6f436c)
        mstore(mload(0x4040), 0x646976
