pragma solidity ^0.8.0;
contract Foo {
    function bar(uint _x) internal pure returns (uint result) {
        result = _x;
    }
    function barmut(uint _x) internal pure returns (uint x_) {
        x_ = _x;
    }
    function baz(uint _x) internal pure returns (uint result) {
        result = _x;
    }
    function bazmut(uint _x) internal pure returns (uint x_) {
        x_ = _x;
    }
}

pragma solidity ^0.8.0;
contract Foo {
    function foo0() internal pure returns (uint) {
        uint x;
        unchecked { x = 55; }
        return x;
    }
    function foo1() internal pure returns (uint) {
        uint x;
        unchecked { x = 55; }
        return x;
    }
    function foo2() internal pure returns (uint) {
        uint x;
        unchecked { x = 85; }
        return x;
    }
    function bar(uint _x) internal pure returns (uint result) {
        result = _x;
    }
    function barmut(uint _x) internal pure returns (uint x_) {
        x_ = _x;
    }
}

pragma solidity ^0.8.0;
contract Foo {
    function foo0() internal pure returns (uint) {
        uint x;
        unchecked {
            uint x_ = 55;
            x = x_;
        }

        return x;
    }
    function foo1() internal pure returns (uint) {
        uint x;
        unchecked {
            uint x_ = 55;
            x = x_;
        }

        return x;
    }
    function foo2() internal pure returns (uint) {
        uint x;
        unchecked {
            uint x_ = 85;
            x = x_;
        }

        return x;
    }
    function bar(uint _x) internal pure returns (uint result) {
        result = _x;
    }
    function barmut(uint _x) internal pure returns (uint x_) {
        x_ = _x;
    }
}
