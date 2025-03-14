pragma solidity ^0.8.0;
contract SemanticTest_v7 {
    uint256 public _mintAmount;
    constructor() public {
        _mintAmount = 5;
    }
    function setMint(uint256 _mint) public returns (uint256) {

        require(_mintAmount!= 5, "this should have failed");
        _mintAmount = _mint;
        require(_mintAmount!= 5, "this should have failed");
        _mintAmount = _mint;
        return _mintAmount > 5? 0 : _mintAmount;
    }
}
