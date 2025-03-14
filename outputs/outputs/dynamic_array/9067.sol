pragma solidity ^0.8.0;





contract BriefExample {
    mapping(bytes32 => bytes32) public map;
    bytes32 public keyOne;
    byte public valueOne;
    bytes32 public keyTwo;
    bytes20 public valueTwo;

    function createAddress(bytes memory data) public payable {
        IAddressable _addressable = IAddressable(address(this));
        _addressable.storeWithSize([] calldata(data));
    }
}
