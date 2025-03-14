pragma solidity ^0.8.0;
contract MutateNeg2 {
    uint256 x;
    uint256 y;
    address[] addrs;
    constructor() {
        x = -1000;
    }
}

pragma solidity ^0.8.0;
contract MutateNeg3 {
    uint256 x;
    uint256 y;
    address[] addrs;
    constructor() {
        x = -x;
    }
}
