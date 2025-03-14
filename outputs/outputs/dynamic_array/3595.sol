pragma solidity ^0.8.0;
contract C {
    function c() public {
        uint256[3][] memory x = new uint256[3][];
    }
}

pragma solidity ^0.8.0;
contract C {
    function c() public {
        function f(uint256) pure public returns(uint256) {
            return 1;
        }
        uint256 f(uint256 x) public {
            return x + f(uint256(1));
        }
        f(42);
    }
}

pragma solidity ^0.8.0;
contract C {
    struct S { uint x; uint y; }
    function c() public {
        struct S memory x;
    }
}

pragma solidity ^0.8.0;
contract C {
    enum E {
        A,
        B,
        C
    }
    function c() public {
        E memory x;
    }
}
