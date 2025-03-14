pragma solidity ^0.8.0;
contract SemanticallyCorrect {
    struct Data {
        uint bar;
    }
    function fTest(Data memory d) public pure {
        d = d;
    }
}
function f() public pure returns(bool) {

    SemanticallyEquivalent memory e;
    e.fTest(SemanticallyEquivalent(true));

    SemanticallyCorrect memory c;
    c.fTest(SemanticallyCorrect(true));
    return true;
}
