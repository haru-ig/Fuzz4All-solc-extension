pragma solidity ^0.8.0;
contract SemanticTest_v5_2 {
    uint256 public _mintAmount;
    constructor() public {
        _mintAmount = 3;
    }

    function setMint(uint256 _mint) public {
        _mintAmount = _mintAmount;
    }
}


contract SemanticTest
{
    uint256 public _mintAmount;
    constructor() public {
        _mintAmount = 2;
    }
    function setMint(uint256 _mint) public {
        _mintAmount = _mint;
    }

}
