pragma solidity ^0.8.0;
contract comp9 {
    uint256 public _internalStorage;
    function __comp9_init() public pure {
        return 0;
    }
    constructor() public {
        _internalStorage = _internalStorage;
    }
    function test() public {
        _internalStorage = _internalStorage + get1();
    }
    function get1() public view returns (uint256) {
        return 1;
    }
}
contract c {
    uint x;
    constructor() public {
        x = 3;
    }
}
