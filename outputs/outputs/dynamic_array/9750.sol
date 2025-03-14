pragma solidity ^0.8.0;
contract SemanticallyDifferent {
    struct Data {
        uint bar;
    }
    function fTest(Data memory d) public pure { }
    function fModified(Data memory d) public pure {
        d.bar += 4;
    }
}
