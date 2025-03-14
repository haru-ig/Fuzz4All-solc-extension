pragma solidity ^0.8.0;
import "./SemanticTest_v7.sol";
contract SemanticTest_v8 {
    uint256 public _mintAmount;
    constructor() public {
        _mintAmount = 888;
    }
    function setMint(uint256 _mint) public {
        _mintAmount = _mint;
    }
}
