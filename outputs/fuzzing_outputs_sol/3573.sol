pragma solidity ^0.8.0;
contract M4Semantics1 {
    address payable private a;
    constructor(address payable a) {
        a = a;
    }
    modifier noPayable() { return; }
    function f() public noPayable returns (uint) {
        uint y = (uint8(msg.value));
        a.transfer(uint128(y));
        return x + 1;
    }
}
