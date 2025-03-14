pragma solidity ^0.8.0;
contract SemanticTest_v4 {
    address public payable mintAddress_;
    uint256 public _mintAmount;
    constructor() public {
        mintAddress_ = minterAddress();
        _mintAmount = 2;
    }
    function setMint(uint256 _mint) public {
        _mintAmount = _mint;
        mintAddress_ = msg.sender;
    }
}
