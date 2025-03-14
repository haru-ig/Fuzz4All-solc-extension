pragma solidity ^0.8.0;
contract SemanticTest_v4 {
    uint256 _mintAmount;
    function mint() public view returns (bytes4) {
        return bytes4(0xcccccccccccccccccccc);
    }
    constructor(uint256 _mint) public {
        _mintAmount = _mint;
    }
    function setMint(uint256 _mint) public {
        _mintAmount = _mint;
    }
}
