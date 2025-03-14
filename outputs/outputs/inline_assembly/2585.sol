pragma solidity ^0.8.0;
contract Comp9 {
    uint256 public _internalStorage = 0;
    constructor() public {
        _internalStorage = _internalStorage + 3;
    }
    function test() public {
        _internalStorage = _internalStorage + 1;
    }
    function get1() public view returns (uint256) {
        return 1;
    }
}
contract C {
    uint y;
    constructor() public {
        y = 2;
    }
}
contract D {
    mapping (address => uint256) _internalStorage = mapping(address => uint256) internal{
        address payable _a = payable(uint160(0));
        _internalStorage[1] = 2;
        C.get1.value(1)(_internalStorage);
    }
    mapping (address => uint256) _internalStorage2;
    constructor() public {
        _internalStorage2[uint160(0)] = 3;
    }
    function get1() public view returns (uint256){
        return 1;
    }
}
contract E {
    constructor() public {}
    function test() public {
        C.test.value(1)();
    }
}
