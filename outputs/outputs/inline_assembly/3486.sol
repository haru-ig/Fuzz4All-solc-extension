pragma solidity ^0.8.0;
contract BasicContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    address constant OWNER = msg.sender;
    AdvancedContract public a;
    constructor () public {
        a.change(ONE);
        a.change(TWO);
    }
}
