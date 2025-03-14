pragma solidity ^0.8.0;
contract Test {
    uint public number;
    function value() public view returns(bool) {
        return true;
    }
    modifier increment {
        number += 1;
        _;
    }
}

contract TestMutator {

    string private _name;

    constructor() {

    }

    modifier setName(string memory _name) {
        _name = _name;
        _;
    }

    function getValue() public view setName("Test") returns(string memory) {
        return _name;
    }
    function setValue() public returns void {
        address addr = address(new Test());
        Test c = Test(addr);
        c.increment;
        string memory addr2 = c.getValue();
        string memory addr1 = c.setValue();
    }
    function getName() public view returns(string memory) {
        return _name;
    }
}

contract TestMutatorNoNew {
    string private _name;
    function getName() public view returns(string memory) {
        return _name;
    }

    constructor(string memory _name) {
        _name = _name;
    }
    function setValue() public returns void {
        _name = _name;
    }
}
