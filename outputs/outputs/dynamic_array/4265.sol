pragma solidity ^0.8.0;
contract G5 {
    uint8[6][] _p = [[1, 2, 3]];
    uint8[30][] _q = new uint8[10][];
    uint8[48][] _r = new uint8[15][];
    uint8 _k = 52;
    constructor() public {
       _k = 52;
       _r = _q;
    }
}


pragma solidity ^0.8.0;


contract G7 {
    uint8[] public __array;
    uint8[2] f(uint8 x, uint8 y) public {
        selfdestruct(address(this));
    }
    function() external {
        f(101, 10);
    }
}



pragma solidity ^0.8.0;


contract G8 {
    uint8 public __array[2];
    uint8[8] f(uint256 l, uint256 u) public view {
        return __array[(u - l + 1) % 8];
    }
    function() external view {
        f(8, 1);
    }
}
