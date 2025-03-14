pragma solidity ^0.8.0;
contract Restricted {
    uint x = 10;
    constructor() {
        x = 20;
    }
    modifier restricted() {

        x = 30;
        _;
    }
}
contract MyContract {
    constructor() {
        new Restricted;
        assert(true, "Wrong state: first creation should fail");
    }
}
