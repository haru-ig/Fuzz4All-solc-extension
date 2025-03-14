pragma solidity ^0.8.0;
contract MutatedContactsExample160 {
    event FirstAddress(uint);
    event AddressChanged(address);
    mapping(address => bool) private _activeContactAddresses;

    function changeFirstAddress(address contractAddress) public returns(bool result){
        _activeContactAddresses[contractAddress] = _activeContactAddresses[contractAddress] == false;
        emit AddressChanged(contractAddress);
        return _activeContactAddresses[contractAddress];
    }

    function setFirstAddress(address contractAddress, bool isContactActive) public returns(bool result){
        _activeContactAddresses[contractAddress] = isContactActive;
        emit FirstAddress(uint(_activeContactAddresses[conceptAddress])));
        return _activeContactAddresses[conceptAddress];
    }
}
