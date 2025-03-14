pragma solidity ^0.8.0;
contract SemanticallyEquivalentApp {
    function v() public returns (uint32 a) {
        a = byte(4);
    }
}
contract SemanticallyEquivApp1 is SemanticallyEquivalentApp {
    function x() public returns (uint32 a) {
        a = v();
    }
}
contract SemanticallyEquivalentApp1 is SemanticallyEquivApp {
    function x() public returns (uint32 a) {
        a = v();
    }
}
contract SemanticallyEquivApp2 is SemanticallyEquivApp1 {
    function x() public returns (uint32 a) {
        a = x();
    }
}
contract SemanticallyEquivalentApp2 is SemanticallyEquivApp1 {
    function x() public returns (uint32 a) {
        a = x();
    }
}
contract SemanticallyEquivApp3 is SemanticallyEquivApp2 {
    function x() public returns (uint32 a) {
        a = a;
    }
}
