pragma solidity ^0.8.0;
contract SemanticallyEquivApp {
    uint32 v;
    function v() public returns (uint32) {
        v = v + 2;
        return v + 2;
    }
}
