pragma solidity ^0.8.0;

contract MutatingSemanticIndependenceAndDynamicArray {
    uint[100] public accounts;

    address[] public addresses;
    struct Account {
        address address;
        uint nonce;
    }

    mapping(uint => Account) public account;

    function addAddress(address _address) {
        mapping(uint => Account)[,] memory accounts;
        uint existingNonce = accounts[0][0].nonce;
        uint nonce = existingNonce + 1;

        accounts[nonce] = [Account({address: _address, nonce: nonce}), Account({address: _address, nonce: nonce})];
        account[nonce] = Account({address: _address, nonce: nonce});
        addresses.push(_address);
    }

    function addAddressToArray() {
        mapping(uint => Account)[,] memory accounts;
        uint existingNonce = accounts[0][0].nonce;
        uint nonce = existingNonce + 1;

        accounts[nonce] = [Account({address: addresses[0], nonce: nonce}), Account({address: addresses[1], nonce: nonce})];
        account[nonce] = Account({address: addresses[0], nonce: nonce});
        addresses.push(addresses[1]);
    }
}
