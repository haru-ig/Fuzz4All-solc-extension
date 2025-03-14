pragma solidity ^0.8.0;
contract Comp7 {
    uint256 public _internalStorage;
    function __Comp7_init() internal pure returns (uint256) {
        return 0;
    }
    constructor(uint256 _internalStorage) public {
        _internalStorage = _internalStorage;
    }
    function add(uint256 _b) internal {
        _internalStorage = _b + _internalStorage;
    }
}

pragma solidity ^0.8.0;
contract Comp7 {
    uint256 public _internalStorage;
    function __Comp7_init() internal pure returns (uint256) {
        return 0;
    }
    constructor(uint256 _internalStorage) public {
        _internalStorage = _internalStorage;
    }
    function add(uint256 _b) internal {

        if ((_b % 2)!= 0) {
            _internalStorage = _internalStorage + _b;
        }
    }
}
