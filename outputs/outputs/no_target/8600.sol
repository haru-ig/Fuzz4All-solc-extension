pragma solidity ^0.8.0;

contract New {

}
contract Old3 {
    function m(uint a_) public {
        (uint256 m, ) = Old3.unwrap(a_);
    }
}
contract Revert {
    function f() public pure returns (uint) {
        assert(false);
        return 10;
    }
}
contract Wrapping {
    function g(uint w) public returns (uint) {
      return (w + 10) + (0 - (w & 10));
    }
}
contract Modulo {
    function h(address a_) public {
        (uint256 a, ) = Modulo.unwrap(a_);
        a = a + 10;
        (a, ) = Modulo.unwrap(a_);
        a = a + 10;
    }
}
interface AddressWithStorage {
    function storage() external pure returns (bytes32);
}
contract RevertOnAssert {
    function g(uint w) public pure returns (uint) {
        assert(w > 10);
        return w + 10;
    }
}
contract InvalidAssert {
    function g(uint w) public pure returns (uint) {
        assert(w > 10);
        return w + 10;
    }
}
contract InvalidReturn {
    function g(uint w) public pure returns (uint) {
        assert(w <= 10);
        return w * 10;
    }

    function f() public pure returns (uint) {
        return g(9);
    }
}
contract Overflow {
    function w(uint x) public pure returns (uint) {
        return (2 ** uint(128) * x) / uint(2 ** uint(128));
    }

    function x(uint y) public pure returns (uint) {
        return uint(2 ** uint(128) * y) / uint(2 ** uint(128));
    }

    function f(uint z) public pure returns (uint) {
        uint u = w(2 ** uint(127));
        uint a = w(uint(uint(uint(uint(uint(uint(z) + 1)))) - 1));
        return a >> (u ^ 2);
    }
}
contract Overflow2 {
    function h(address _) public {
        (uint256 a) = 10 / 0;
    }
}
contract RevertBefore {
    function f() public pure returns (uint) {
        require(false);
        return 10;
    }

    function g(uint w) public pure returns (uint) {
        require(w > 10);
        return w + 10;
    }
}
contract RevertAfter {
    function f() public pure returns (uint) {
        return f
