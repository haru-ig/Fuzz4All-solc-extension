pragma solidity ^0.8.0;
contract Mutated11B {
    constructor () public {
    }
    function set(uint160, uint160     , uint160    ) public {
    }
    }
contract Mutated11C {
    constructor (address payable a) public {
    }
    function set(uint160, uint160 , uint160    ) public {
    }
    }
contract Mutated16B {
    constructor (
        string memory _value,
        address _value1
    ) public {
        _value = _value; }
    function set(
        string memory _value,
        uint160
    ) public {
        _value = _value; }
    function set(address _value, address _value1) public {
        _value = address(_value);
        _value1 = _value1; }
    }
contract Mutated16C {
    constructor (
        string memory _value,
        uint160
    ) public {
        _value = _value; }
    function set(string memory _value) public {
        _value = _value; }
    function set(uint160, uint160 , uint160    ) public {
    }
    }
contract Mutated17B {
    constructor (
        string memory _value,
        uint160
    ) public {
        _value = _value; }
    function set(string memory _value, uint160      ) public {
        _value = _value; }
    function set(address _value, uint160      ) public {
        _value = address(_value); }
    }
