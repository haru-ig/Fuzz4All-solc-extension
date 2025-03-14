pragma solidity ^0.8.0;
contract SemanticTest_v7 {
    uint256 public _mintAmount;
    function mint() public view returns (uint256) {
        return _mintAmount;
    }
    constructor() public {
        _mintAmount = 2;
    }
    function setMint(uint256 _mint) public {
        _mintAmount = _mint+1;
    }
}
