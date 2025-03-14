pragma solidity ^0.8.0;
contract SeeminglyEquivalent2{
    mapping (address => uint256) public balances;
    uint256 public totalSupply;
    constructor(){
        totalSupply = 100000;
    }
    function() public payable {
        mint(msg.sender);
    }
    function mint(address account) public {
        balances[account] += totalSupply;
    }
}
contract StructuredEquality_DynamicArrayAssignment_4 {
    uint256[] public field;
    uint256 public sizeBefore;
    uint256 public sizeAfter;
    constructor() public {
        field = new uint256[](5 + 1);
        sizeBefore = 5 + 1;
        sizeAfter = 5 + 1;
        for (uint i = 0; i < field.length; i++) {
            field[i] = 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
        }
        field[field.length] = 0;
    }
}
