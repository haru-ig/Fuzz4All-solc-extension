pragma solidity ^0.8.0;
interface B011 {
    function f() public;
}
contract B012 {
    function f() public;
    B011 b;
    function __B012init() public {}
    function __init() public __B012init() {}
    constructor (address _b) public __init(_b) {}
}
