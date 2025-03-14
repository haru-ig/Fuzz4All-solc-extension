pragma solidity ^0.8.0;
contract SemanticTest_v7 {
    uint256 public _mintAmount;
    function mint() public view returns (uint256) {
        _mintAmount = 5;
        return _mintAmount;
    }
    constructor() public {
        _mintAmount = 6;
    }
    function setMint(uint256 _mint) public {
        _mintAmount = _mint + 1;
    }
}
contract SemanticTest_v8 {
    uint256 public i;
    uint256 public j;
    uint256 public k;
    uint256 public m;
    uint256 public n;
    function mint() public {
        i = 1;
    }
    constructor() public {
        m = 2;
        k = m + 1;
    }
    function setMint(uint256 _mint) public {
        j = 3;
        uint256 k = _mint;
    }
}





pragma experimental ABIEncoderV2;
contract SemanticTest_v9 {
    uint256 private constant TEST_MINT = 42;
    uint256 public _mintAmount;
    function mint() public view returns (uint256) {
        return _mintAmount;
    }
    constructor() public {
        _mintAmount = TEST_MINT;
    }
    function setMint(uint256 _mint) public {
        _mintAmount = _mint;
    }
}
