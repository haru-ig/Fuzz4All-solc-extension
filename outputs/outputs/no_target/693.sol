pragma solidity ^0.8.0;
contract Mutated {
    function modify_with_checked_add(uint256 a) public pure {
        require(a < 0x100, "Must be a < 0x100.");
        unchecked {
            a = a + a;
        }
    }
    function modify_with_unchecked_add(uint256 a) public pure {
        unchecked {
             a = a + a;
        }
    }
    function modify_with_checked_sub(uint256 a) public pure {
        require(a < 0x100, "Must be a < 0x100.");
        unchecked {
            a = a - a;
        }
    }
    function modify_with_unchecked_sub(uint256 a) public pure {
        unchecked {
             a = a - a;
        }
    }
    function modify_with_checked_mul(uint256 a) external pure {


        unchecked {
            a = a * a;
        }

        unchecked {
            a = a - a;
        }
    }
    function modify_with_unchecked_mul(uint256 a) external pure {
        unchecked {
             a = a + a;
        }
    }
    function modify_with_checked_div(uint256 a) public pure {
        require(a > 0, "Can't divide by 0.");
        unchecked {
            a = a / a;
        }
    }
    function modify_with_unchecked_div(uint256 a) public pure {
        unchecked {
             a = a / a;
        }
    }
}
