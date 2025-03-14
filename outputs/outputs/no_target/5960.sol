pragma solidity ^0.8.0;
contract C {
    function f() public pure returns (uint) {
        return uint(-5);
    }
}
contract C {
    function f() public pure returns (uint) {
        uint 0 / 0;
    }
}

pragma solidity ^0.8.0;
contract C {
    function f() public pure returns (uint) {
        uint(uint256(uint256(-2) * 2) + (-2));
    }
}

pragma solidity ^0.8.0;
contract C {
    function f() public pure returns (uint) {
        uint(uint256(uint256(uint256(-2) * 2) + 2) * 2);
    }
}

pragma solidity ^0.8.0;
contract C {
    function f() public pure returns (uint) {
        unchecked {
             (uint128 x, uint z) = 1 / unchecked(-1);
        }
    }
    function g() public pure returns (uint) {
        unchecked {
             (uint128 x, uint z) = 2 / unchecked(uint160(1));
        }
    }
    function h() public pure returns (uint) {
        unchecked {
             (uint128 x, uint z) = 4 / unchecked(2 ** 160);
        }
    }
}

pragma solidity ^0.8.0;
contract C {
    function f() public pure returns (uint) {
        unchecked {
             (uint128 x, uint z) = unchecked(uint128(unchecked(-1)));
        }
    }
    function g() public pure returns (uint) {
        unchecked {
             (uint128 x, uint z) = unchecked(uint128(unchecked(uint256(1))));
        }
    }
}
