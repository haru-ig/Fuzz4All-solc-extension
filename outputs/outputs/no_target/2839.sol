pragma solidity ^0.8.0;
contract newStorage {
    uint storage a;
    constructor() {
        a[0x01] = 3;
    }
}
