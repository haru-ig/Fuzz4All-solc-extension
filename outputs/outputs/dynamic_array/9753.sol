pragma solidity ^0.8.0;
contract SemanticallyIncompatible {
    function fTest(uint foo) public pure {

    }
    function fTestCall(uint[] calldata) public view {

    }
}
