pragma solidity ^0.8.0;
contract C {
    struct S {
        function g() pure external returns (uint8);
    }
}

pragma solidity ^0.8.0;
contract C {
    struct S {
        uint8 public pure;
    }
}

pragma solidity ^0.8.0;
contract C {
    struct S {
        uint8 public pure;
    }
    bool public immutable foo;
    saturated uint8 public bar;
}

pragma solidity ^0.8.0;
contract C {
    struct S {
        uint8 public pure;
    }
}

pragma solidity ^0.8.0;
contract C {
    struct S {
        uint8 public _f;
        function g() external pure returns (uint8) {
            return _f;
        }
    }
}

pragma solidity ^0.8.0;
contract C {
    uint8 _f;
    function g() public pure returns (uint8) {
        return _f;
    }
    function s() public pure returns (uint16) {
        return uint16(_f & 0xffff);
    }
    function t() public pure returns (uint32) {
        return uint32(_f >> 16 & 0xffff);
    }
    function u() public pure returns (uint64) {
        return uint64(_f >> 32 & 0xffff);
    }
}
