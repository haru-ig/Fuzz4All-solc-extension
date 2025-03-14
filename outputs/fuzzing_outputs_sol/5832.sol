pragma solidity ^0.8.0;
contract ContractA {

    constructor() {
        uint x = 3;
        assert(x >= 2);
    }


    payable A(address x) {
        x = 2;
        assert(x >= 1);
    }
}
