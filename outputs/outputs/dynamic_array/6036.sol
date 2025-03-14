pragma solidity ^0.8.0;
contract Test30021 {
    uint[2] public data;
    constructor () public {
        data = [0, 1];
    }
    fallback () external {

    }
}
