pragma solidity ^0.8.0;
contract B {
    FallbackTest f;
    constructor() {}
    function f1() external payable { require(false, '2'); }
}
