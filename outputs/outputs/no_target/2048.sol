pragma solidity ^0.8.0;
contract Modification {
    uint256 public _a;
    constructor(uint256  _a) public {
        _a++;
        _a += 2;
        _a *= 3;
        _a /= 4;
    }
}
contract ModificationRevert1 {
    uint256 public _a;
    constructor(uint256  _a) public {
        _a = 3;
        _a += 1000;
        _a /= 2;
    }
}
contract ModificationRevert2 {
    uint256 public _a;
    constructor(uint256  _a) public {
        _a = 4;
        _a *= 2**256;
        _a *= 2**224;
        _a *= 2**225;
        _a /= 2;
    }
}
contract ModificationRevert3 {
    uint256 public _a;
    constructor(uint256  _a) public {
        _a = 5;
        _a *= -2**224;
        _a *= 2**128;
        _a *= 2**129;
        _a /= 2;
    }
}
