pragma solidity ^0.8.0;
contract SemanticTest_v7 {
    uint256 _mintAmount_;
    constructor() public {
        _mintAmount_ = 30;
    }
    function getMint() public view returns (uint256) {
        return _mintAmount_;
    }
    function setMint(uint256 _mint) public {
        _mintAmount_ = _mint;
    }
}
