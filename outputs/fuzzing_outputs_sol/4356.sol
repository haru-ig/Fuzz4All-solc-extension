pragma solidity ^0.8.0;
contract CallerModifier02 {
    bool b;
    constructor() {
        require(b);
    }
}
