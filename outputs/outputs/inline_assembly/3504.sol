pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract {
    struct Struct {
        uint a;
        uint b;
    }
    modifier onlyUpdate (address, Struct memory) {
    }
    function change (Struct memory _current) public onlyUpdate(address(0), _current) {
        _current.a = 1;
    }
}
