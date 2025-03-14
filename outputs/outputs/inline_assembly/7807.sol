pragma solidity ^0.8.0;
contract L15 {
    function multiply(uint x, uint y) external pure returns (uint) {
        assembly {
            let xStore := mload(0x30)
            let yStore := mload(0x40)
            mstore(0x30, mul(add(xStore, yStore), 42))
        }
        return x;
    }
}
contract L16 {
    function multiply(uint x, uint y) internal pure returns (uint) {
        assembly {
            let xStore := mload(0x30)
            let yStore := mload(0x40)
            mstore(0x30, mul(add(xStore, yStore), 42))
        }
        return x;
    }
}



contract A {
    event Emitted(string msg);

    function f() public {
        Emitted("A");
    }
}
contract B {
    function g() public pure returns (uint256) {
        return 42;
    }
}
contract C is A, B {





    function h() public pure {
        c();
    }

    function c() public pure {
        if (g()) {
            emit Emitted("hi");
        }
        c();
    }
}

contract D {
    function f() public pure {
        b();
    }

    function b() public pure {
        c();
        c();
    }
}

contract E {
    function b() public pure {
        c();
        c();
    }
}
