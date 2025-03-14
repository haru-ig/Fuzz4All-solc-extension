pragma solidity ^0.8.0;
contract Comp8 {
    uint256 public _internalStorage;
    function __Comp8_init() internal pure returns (uint256) {
        return 0;
    }
    contructor(uint256 _internalStorage) public {
        _internalStorage = _internalStorage;
        _internalStorage = _internalStorage + (100);
    }
    function add(uint256 _b) internal {

        _internalStorage = _internalStorage + _b;
    }
}
pragma solidity 0.5.0;
contract Comp3 {
    uint internal _internalStorage;
    function __Comp3_init() public {
        _internalStorage = 100;
    }
    function add() public  {
        _internalStorage = _internalStorage + (10);
    }
}
pragma solidity 0.5.0;
contract Comp4 {
    uint public _internalStorage;
    constructor(uint32 _internalStorage) public {
        _internalStorage = _internalStorage;
    }
    function add() public  {
        _internalStorage = _internalStorage + (11);
    }
}
