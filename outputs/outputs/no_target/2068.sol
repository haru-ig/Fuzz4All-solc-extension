pragma solidity ^0.8.0;
contract Modification {
    uint256 public _a;
    uint256 public _b;
    struct InnerStruct {
        uint256 _inner;
    }

    constructor(uint256 _b) public {
       _b = _b * 8;
    }

    function doSomething(uint256 _a) public {
        _a *= _a;
        _a = _a + _a + _a - _a + _a - _a - _a - _a + _a + _a - _a + _a;
        _a = _a / _a;
        InnerStruct memory _s;
        _s.inner = _a - _a;
    }
}
