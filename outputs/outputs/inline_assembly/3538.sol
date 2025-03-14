pragma solidity ^0.8.0;
contract ChangeSemanticsUsingYulWithNoSemantics {
    address constant ZERO = address(0);
    address constant ONE = address(1);
    address constant TWO = address(2);
function change1 (address a) public {
    assembly {
        sub a, 1
        sub a, 1
        mstore(a, 0x1)
    }
    assembly {
        mstore(a, 0x1)
        add a, 1
        add a, 2
    }
    a = ONE;
    assembly {
        mstore(a, 0x1)
        add a, 2
        add a, 2
    }
    a = ZERO;
    assembly {
        mstore(a, 0x1)
    }
    a = ONE;
    assembly {
        mstore(a, 0x1)
    }
    a = TWO;
    assembly {
        mstore(a, 0x1)
    }
    a = TWO;
    assembly {
        mstore(a, 0x1)
        add a, 1
        add a, 2
    }
    a = ZERO;
    assembly {
        mstore(a, 0x1)
        add a, a
    }
    a = ONE;
    assembly {
        mstore(a, 0x1)
    }
    a = ONE;
    assembly {
        mstore(a, 0x1)
    }
}
function change9 (address a) public {
    address memory a1 is new ZERO();
    address memory a2 is ONE;
    a = ONE;
    assembly {
        mstore(a, 0x1)
    }
    a = ONE;
    a
