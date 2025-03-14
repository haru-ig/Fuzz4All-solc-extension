pragma solidity ^0.8.0;
contract SemanticTest_v6 {
    uint256 _mintAmount;
    constructor(uint256 _mint) public {
        _mintAmount = _mint;
    }
    function mint() public view returns (uint256) {
        return _mintAmount;
    }
    function setMint(uint256 _mint) public {
        _mintAmount = _mint;
    }
}
