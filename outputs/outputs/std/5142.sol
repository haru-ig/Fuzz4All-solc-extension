pragma solidity ^0.8.0;
contract Semantics5 {
    function f(uint16 a, bool inB) public pure {
        if (a < 12) {
            uint8 c = 0;
        }
    }
}

pragma solidity ^0.8.0;
contract Semantics6 {
    function f() public pure {
    }
}
contract SemiSemantics7 {
    function f() public pure {
    }
}
contract SemiSemantics8 {
    function f() public pure {
    }
}
contract NoSemiSemantics {
    function f() public pure {
    }
}
