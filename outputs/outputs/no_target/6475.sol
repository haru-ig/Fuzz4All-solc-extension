pragma solidity ^0.8.0;
contract {
    function f() public {
        uint256 a;
        unchecked {
            uint256 b;

            a = b + 1;

            b = a - 419;
            a = b + 1;

            b = a - 42;
            a = b;
        }
    }
}

pragma solidity ^0.8.0;
contract {
    function f() public {
        uint256 a;

        uint256 b;
        unchecked {

            b = a + 42;

            b = a;
        }

        b = a - 42;
        uint256 c;
        a = b + 3 * 3;
        uint256 d;
        uint256 e;
        b = c * a;
        b = a * d;
        b = b + 1;
        b = (a + 419) + 419;
    }
}
pragma solidity ^0.8.0;
contract {
    function f() public {
        uint256 a;
        uint256 x;
        unchecked {

            x = 419 + 1;

            a = b + 1;

            x = a;

            a = a - 419;

            x = a + 3;

            a = a - 42;

            a = a + x + 42;

            a = a - 42;

            a = a * x;

            a = a + x * 42;

            a = a - x * 42;
        }

        x = a + x * 419;

        x = a + x * b;

        x = a + a * 1;

        x = x + a;

        x = b / a;
        uint256
