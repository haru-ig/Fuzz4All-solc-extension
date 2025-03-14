pragma solidity ^0.8.0;
contract EthStorage {
    mapping(address=> bool) mappingOfAddressesToBlocked;
    constructor(bool _blocked) {
        mappingOfAddressesToBlocked[_blocked] = true;
    }
}
