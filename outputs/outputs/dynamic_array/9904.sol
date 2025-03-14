pragma solidity ^0.8.0;
contract SemanticTest_v7 {
    uint256 public _mintAmount;
    constructor() public {
        _mintAmount = 2;
    }
    function setMint(uint256 _mint) public view {
        _mintAmount = _mint;
    }
}
