pragma solidity ^0.8.0;
contract Semantics {
    uint[] aData;
    mapping (uint => bool) public isPresent;
    mapping (uint => uint) public value;
    constructor(uint data) { aData.push(data); }
}
