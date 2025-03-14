pragma solidity ^0.8.0;
contract Comp9 {
    uint256 public _internalStorage;
    function __Comp9_init() internal pure returns (uint256) {
        return 0;
    }
    constructor() public {
        _internalStorage = _internalStorage;
    }
    function test() public {
        _internalStorage = _internalStorage + get1();
    }
    function get1() public view returns (uint256){
        return 1;
    }
}



pragma solidity ^0.8.0;

contract C {
    uint x;
    constructor()  public {
        x = 3;
    }
}
