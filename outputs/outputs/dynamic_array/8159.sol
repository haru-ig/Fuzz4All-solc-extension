pragma solidity ^0.8.0;
contract MutatedFabric {

    constructor(address a, bytes memory x) {
        toAdd = a;
        x = x;
        z = new MutatedFabric(address(0x57428361d112335538de684878b21db29c7e71f5), x);
        z.z = this;
        z.y = z;
        y = new MutatedFabric(toAdd, x);
        y.z = this;
        y.y = z;

    }
}
