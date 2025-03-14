pragma solidity ^0.8.0;
contract C {
    uint256 constant MAX = 5000;
    uint256 private _x;
    constructor() {
        uint256 _c = 50000;
        _x = uint256(10**4);
        require(_x > _c);
    }
}
contract G {
    uint256 constant MAX_VALUE = 2**256 - 1;
    uint256 public _x;
    constructor() public {
        uint256 _c = 50000;
        _x = uint256(10**4);
        require(_x > _c);
    }
}
contract S {
    function doRevert() external {
        uint256 _c;
        _c = 50000;
        require(_x > _c);
    }
    function doLog() external {
        require(_x > 50000);
    }
}
