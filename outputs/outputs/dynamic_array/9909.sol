pragma solidity ^0.8.0;
contract SemanticTest_v6 {
    uint256 public _mintAmount;
    constructor() public {
        uint256[] memory _mint = [1];
        uint256[128] memory _mint1;
        uint256[] memory _mint2;
        uint256[128] memory _mint3;
        _mintAmount = _mint[0];
    }
    function setMint(uint256 _mint) public {
        _mintAmount = _mint;
    }
}
