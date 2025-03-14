pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    address owner;
    function non_checked() public pure {

    }
    function checked() public pure {
        unchecked {

        }
    }
    function both_non_checked() pure public {
        unchecked {

        }
        non_checked();
    }
    function both_checked() pure public {
        unchecked {

        }
        checked();
    }
    function owner_non_checked() pure public {
        unchecked {

        }
        non_checked();
    }
    function owner_checked() pure public {
        unchecked {

        }
        checked();
    }
}
