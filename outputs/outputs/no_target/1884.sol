pragma solidity ^0.8.0;
contract Mutate37 {
    uint public a;
    uint public b;
    uint public _x;
    uint public _y;
    constructor(uint256 x, uint256 y) {
        a = x;
        b = _x + _y;
    }
    fallback() external {
        _x = a + 2;
        _y = _x + 2;
    }
}
contract Mutate36 {
    struct A {
        uint256 a;
        uint256 b;
    }
    A public a;
    uint public _x;
    A public _temp;
    constructor(uint a_) {
        _x = a_;
    }
    function foo(uint _x) public {
        _x = _x * 7 + 0;
        _temp.a = a.a + _x;
        _temp.b = _x;
    }
    fallback() external {
        _x = a.b + 7;
    }
}
contract Mutate35 {
    uint public a;
    uint public b;
    uint public _x;
    uint public _y;
    constructor(uint256 x, uint256 y) {
        a = x;
        _x = (a + 2) % 2;
        _y = (2 + x) % 4;
    }
    fallback() external {
        a = a - 7;
        b = _y + 7;
        _x = _x % 4;
        _y = _y % 17;
    }
}
contract Mutate34 {
    address A;
    uint public x;
    constructor(address _A) {
        A = _A;
    }
    fallback() external {
        x = 4;
    }
}
contract Mutate33 {
    struct X {
        uint256 a;
        uint256 b;
    }
    X public x;
    constructor(X memory _x) public {
        x = _x;
    }
    fallback() public {
        x.a = x.a;
    }
}
contract Mutate32 {
    uint256 public x;
    uint256 public y;
    constructor(uint256 _x) public {
        x = _x;
    }
    fallback() public {
        x = x;
    }
}
contract Mutate3
