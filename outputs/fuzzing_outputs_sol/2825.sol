pragma solidity ^0.8.0;


contract Caller3 is Caller2 {
    constructor () {}
    fallback () external payable {}
}
