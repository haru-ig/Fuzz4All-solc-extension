pragma solidity ^0.8.0;
contract SemanticallyEquivApp2 {
    function f(uint256 a_1_1, bool a_1_0) public {
        if (a_1_1) {
            return;
        } else {
            a_1_0 = true;
        }
    }
}
contract SemanticallyEquivApp3 {
    function f(uint256 a_1_1, bool a_1_01, bool a_1_00) public {
        return;
    }
}
contract SemanticallyEquivApp4 {
    function f() public {
        return f(1, true, true);
    }
}
contract SemanticallyEquivApp5 {
    function f() public {
        return f(45, true, true);
    }
}
contract SemanticallyEquivApp6 {
    function f(uint256 a_1_1) public returns (uint256 a_1_0) {
        uint256 a;
        a_1_0 = a_1_1;
        a += 1;
    }
}
contract SemanticallyEquivApp7 {
    function f(int256 a) public {
        a += 4;
    }
}
contract SemanticallyEquivApp8 {}
contract SemanticallyEquivApp9 {}
contract SemanticallyEquivApp10 {}
contract SemanticallyEquivApp11 {}
contract SemanticallyEquivApp12 {}
