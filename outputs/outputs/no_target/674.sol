pragma solidity ^0.8.0;
library SafeMath {
    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
        unchecked {




            if (a == 0) {
                return 0;
            }

            c = a * b;
            require(c / a == b, "Math: multiplication overflow");
        }
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        unchecked {
            if (b > 0) {
                require(a > 0, "Math: division by zero");
                return a / b;
            }
        }
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        unchecked {

            require(b <= a, "Math: subtraction overflow");
            return a - b;
        }
    }

    function max64(uint64 a, uint64 b) internal pure returns (uint64 x) {
        if (a >= b) {
            return a;
        }
        return b;
    }

    function min64(uint64 a, uint64 b) internal pure returns (uint64 x) {
        require(b <= a);
        return a;
    }
}
