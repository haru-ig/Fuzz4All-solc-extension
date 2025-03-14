pragma solidity ^0.8.0;
contract C0 {
    uint160[] public a;
    uint160 value;

    constructor() {
        value = 42;
        a[0] = value;
        a[1] = 42;
    }
}
pragma solidity ^0.8.0;
contract MyContractStorageAbiBug {}
