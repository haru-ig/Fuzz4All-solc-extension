pragma solidity ^0.8.0;
contract RevertSemantics {
    function f(uint256 x) public {if (x>0){ revert(1); } }
}

pragma solidity ^0.8.0;
contract CheckedArithmetic {
    function f(uint256 x) public {if (x>0){ revert(-1); } }
}

pragma solidity ^0.8.0;
contract NewUnchecked
{
    function f(uint256 x) public {
        if (x > uint256(-1))

        {
            revert();
        }
    }

    function g(uint256 x) public {
        if (uint256(-1) > x)

        {
            revert(uint256(255));
        }
    }

    function h(uint256 x) public {
        if (x > uint256(255))

        {
            unchecked {
                revert();
            }
        }
    }

    function i(uint256 x) public {
        if (uint256(255) > x)

        {
            unchecked {
                revert(1);
            }
        }
    }

    function j(uint256 x) public {
        unchecked {
            if (x > uint256(1)) revert();
        }
    }
}

pragma solidity ^0.8.0;
contract NewUncheckedBlock
{
    function f(uint256 x) public {

        if (x > uint256(x ^ 0xFFFF))

        {
            unchecked {
                revert();
            }
        }
    }

    function g(uint256 x) public {

        if (x > uint256(255))

        {
            unchecked {
                revert(1);
            }
        }
    }

    function h(uint256 x) public {
        unchecked {

            if (x > uint256(1)) revert();
        }
    }

    function i(uint256
