pragma solidity ^0.8.0;
contract Mutator0 {
    constructor(address _address) {
        _address_0 = _address;
        _address_1 = _address;
    }
    function setAddressData(address _address) public {
        _address_0 = _address;
        return (_address_1);
    }
    function getAddressData() public view returns (address) {
        return (_address_0);
    }
    address private _address_0;
    address private _address_1;
}
