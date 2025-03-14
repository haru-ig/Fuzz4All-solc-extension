pragma solidity ^0.8.0;
contract LotteryWithCalldataArrayAbiEncoded {
    address[] internal _addressAddressTables;
    mapping(address => bool) internal _nonEqualAddressAddressTables;

    struct LotteryDataStruct {
        bytes32 resultAddr;
        bytes32 resultAddr1;
    }
    LotteryDataStruct[] internal _dataStructArrays;

    event SetNonEqual(bool _value);
}
