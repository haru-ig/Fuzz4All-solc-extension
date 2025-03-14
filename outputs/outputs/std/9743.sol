pragma solidity ^0.8.0;
contract MutateNeg2 {
    uint256 x;
    uint256 y;
    address[] addrs;
    constructor(uint256 numAddrs) {
        x = 0;
        y = 0;
    }

    function () external payable {}
}

pragma solidity ^0.8.0;
contract MutatePos1 {
    uint256 x;
    uint256 y;
    address[] addrs;
    constructor() {
        x = 0;
    }

    function () external payable {}
}
