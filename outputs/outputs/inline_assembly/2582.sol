pragma solidity ^0.8.0;
contract Comp10 {
    uint256 public _internalStorage;
    mapping(address => uint256) public _storage;
    function __Comp10_init() internal pure returns (uint256) {
        return 0;
    }
    constructor() public {
        _internalStorage = 0;
        _storage['1'] = '0';
        _storage[0x9e162f8e4b562a8f34296549c2b80ee0047c4356'] = 0;
        _storage[2] = 4;
    }
    function test() external {
        _internalStorage = _internalStorage + _storage[0x9e162f8e4b562a8f34296549c2b80ee0047c4356'];
    }
    function test2() external {
        _internalStorage = _internalStorage + _storage[2];
    }
}
