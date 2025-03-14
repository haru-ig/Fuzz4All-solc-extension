pragma solidity ^0.8.0;
contract Comp7 {
    uint256 public _internalStorage;
    function __Comp7_init() internal pure returns (uint256) {
        return 0;
    }
    constructor() public {
    }
    function add(uint256 _b) internal {
        uint256 temp;
        assembly {
            temp := mload(add(_internalStorage, 0x50))
        }
        _internalStorage -= 0x40;
        _internalStorage += _b;
    }
}
