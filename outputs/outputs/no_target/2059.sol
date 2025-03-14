pragma solidity ^0.8.0;
contract ModificationSemanticallyEquivalent {
    uint256 public a;
    string public b;
    mapping(uint256 => uint256) public mappings;
    constructor(string memory _b) public {
        a = 0;
        a = 0xFEED;
        return a;
        b = _b;
    }
}
