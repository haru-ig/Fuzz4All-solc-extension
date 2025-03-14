pragma solidity ^0.8.0;
contract Comp4 {
    uint256 public _a;
    constructor(uint32 _b) {
        assembly {
            _a := _a + 2
        }
        _a = _b + 1;
    }
    function increase() public {
        _a += 3;
    }
    function decrease() public {
        _a -= 6;
    }
}
contract Comp5 {
    uint256 public _a;
    constructor(uint32 _b) {
        assembly {
            _a := _a + 2
        }
        _a = _b + 1;
        assembly {
            _a := _a - 2
        }
        _a = _a - 1;
    }
    function increase() public {
        _a += 3;
    }
}
contract Comp6 {
    uint256 public _a;
    constructor(uint32 _b) {
        assembly {
            _a := _a + 2
        }
        _a = _b + 1;
        assembly {
            _a := _a - 2
        }
        _a = _a - 1;
    }
    function increase() public {
        _a += 3;
    }
}
