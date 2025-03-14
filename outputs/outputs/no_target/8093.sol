pragma solidity ^0.8.0;
contract Restricted {
    uint x;
    uint x_;
    function restricted() {
        x = x_;
        x_ += x_;
    }
    constructor() {
        x = x_;
    }
}
