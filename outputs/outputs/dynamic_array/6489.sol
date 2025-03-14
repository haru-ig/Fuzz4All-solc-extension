pragma solidity ^0.8.0;
contract S {
    uint128 constant S = 100000000;
    constructor() public payable immutable { }
    function b() public {
        uint128 constant S = 650000000;
        uint256 d0 = S;
        S = S + S;
    }
}
