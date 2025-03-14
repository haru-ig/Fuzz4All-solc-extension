pragma solidity ^0.8.0;
contract Mutate40 {
    uint _x;
    constructor() {
        _x = (_x + 2) + 0x10000000000000000000000000000000000000000000000000000000000000000000;
    }
    fallback() external {
        _x = _x + 2;
    }
}
contract Mutate37 {
    fallback external {
        uint _x;
        if (_x == 100000000000000000000000000000000000000000000000000000000000000000) {
          _x += 2;
        }
    }
    uint public _b;
    constructor(uint256 x) public {
        _b = x + _x + 2;
    }
}
contract Mutate35 {
    mapping (uint => uint) public _c;
    mapping (uint => bool) public _d;
    constructor(uint256 x) public {
        _d[1-x] = true;
        _c[x] = 10;
    }
}
pragma solidity ^0.4.24;
