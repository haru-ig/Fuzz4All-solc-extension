pragma solidity ^0.8.0;
contract SemanticTest_v7 {
    SemanticTest_v6 _v6;
    constructor(uint256 _mint) public {
        _v6= new SemanticTest_v6(_mint);
    }
    function _v6Mint() public view returns (uint256) {
        return _v6.mint();
    }
    function setMint(uint256 _mint) public {
        _v6.setMint(_mint);
    }
}
