pragma solidity ^0.8.0;
contract ModificationRevert4{
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 6;
        uint256 memory _i;
        _i = a;
        b = _b;
    }
}
