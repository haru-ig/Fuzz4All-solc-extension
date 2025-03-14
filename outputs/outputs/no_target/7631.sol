pragma solidity ^0.8.0;
contract X {
    function f(uint24 c[]) public {
        f2();
    }

    function f2(uint24 c[] memory) public {
        f2(false);
        f2(c[0]);
        f2(c[0]);
    }

    function f3(uint24 c[] memory, uint20 z1) public {
        f2(false);
        f2(c[0]);
        f2(c[0]);
        f3(c[0], c[0]);
        f3(c[0], 0);
        f3(c[0], 0);
        unchecked {
            f3(c[0], 0);
        }
        f3(c[0], 0);
    }

    function f4(uint24 c[]) public {
        f2(c[0]);
        f4(c[0]);
        f4(c[0]);
        unchecked {
            f4(c[0]);
        }
        unchecked {
            f4(c[0]);
        }
        checked {
            f4(c[0]);
        }
        unchecked {
            f4(c[0]);
        }
        unchecked {
            f4(c[0]);
        }
        unchecked {
            f4(c[0]);
        }
        f4(c[0]);
    }

    function f5(uint24 c[]) public {
        f2(c[(uint24)max_int >> 20] >> 64);
        checked {
            f5(c[(uint24)max_int >> 20] >> 128);
        }
        unchecked {
            f5(c[(uint24)(max_int >> 20)]);
        }
        unchecked {
            f5(c[(uint24)uint(2**255)]);
        }
        unchecked {
            f5(c[(uint24)uint(2**128)]);
        }
        unchecked {
            f5(c[(uint24)-uint(2**128)]);
        }
    }

    function f6(uint24 c[]) public {
        f2(c[b't']);
        f6(c[b't']);
        f6(c[b't']);
        unchecked {
            f6(c[b't']);
        }
        unchecked {
            f6(c[b't']);
        }
        checked {
            f6(c[b't']);
        }
        unchecked {
            f6(c[b't']);
        }
        unchecked {
            f6(c[b't']);
        }
        unchecked {
            f6(c[b't']);
        }
        unchecked {
            f6(c[b't']);
        }
        f6(c[b't']);
    }
}
