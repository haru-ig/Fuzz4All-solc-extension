pragma solidity ^0.8.0;
contract ArrayStorage {

    address _addressArray;
    uint256 internal _length;

    function setAddressArray(address element) public {
        _addressArray = element;
        _length++;
    }

    function addressArray() public view returns(address) {
        return _addressArray;
    }

    function lengthOfStorage() public view returns (int) {
        return _length;
    }

    function getAddressIndex(uint256 index) public view returns (address) {
        require(index < _length, "address out of range");
        return _addressArray;
    }
}
