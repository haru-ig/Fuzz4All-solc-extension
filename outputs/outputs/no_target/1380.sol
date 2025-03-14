pragma solidity ^0.8.0;
contract Mutate_0024 {
    function g(uint a) public pure {
        if(a < 0) {
            revert();
        }
    }
    function h() public pure {
        g(0);
    }
}
contract Fail_0025 {
    uint256 _value_;
    constructor(uint256 a) public {
        _value_ = a;
    }
    function d1(uint256 b) public pure {
        if(b < 0) {
            revert();
        } else if(b == 0) {
            revert();
        }
    }
    function f() public pure {
        d1(2 * _value_);
    }
}

pragma solidity ^0.8.0;
address Foo;
contract Mutate_0026 {
    struct S1 { uint128 i; }
    event E(uint256 x0);

    constructor(Foo f) public { Foo = f; }
    function g() public {

        uint256 x = 2 + (1 << 16);
        require(x >= 1, "");
        Foo.transfer(x);
        emit E(x);
    }
    function isBad() public pure returns (bool) {
        require(Foo.transfer(0), "");
        return true;
    }
}
