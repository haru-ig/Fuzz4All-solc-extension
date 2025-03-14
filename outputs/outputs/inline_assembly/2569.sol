pragma solidity ^0.8.0;
contract Comp8 {
    uint256 public _internalStorage;
    Comp7 public Comp5_instance;
    uint256 public _internalStorage_2;
    event Comp7_constructor(uint7 _b);
    constructor(uint256 _internalStorage, Comp7 _instanceOf5) public {
        _internalStorage = _internalStorage;
        Comp5_instance = _instanceOf5;
    }
    function add(uint256 _b) internal {
        Comp5_instance.add(1);
    }
    function test() public {
        add(100);
    }
}
