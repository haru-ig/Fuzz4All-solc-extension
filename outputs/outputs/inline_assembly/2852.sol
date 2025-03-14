pragma solidity ^0.8.0;
contract A {
    uint public z;
    mapping(bytes32 => bytes32) hashMap;
    function set(uint _z) public {
        z = _z;
    }
    function add(uint _z) public {
        z += _z;
    }
    function subtract(uint _z) public {
        z -= _z;
    }
    function increment(uint _z) public {
        z++;
    }
    function decrement(uint _z) public {
        z--;
    }
    function modify(uint _z) public {
        z *= _z;
    }
    function transfer(uint _z) public {
        z = _z;
    }
    constructor() public {
        z = 1;
    }
    function viewFuncGet() public view returns(uint) {
        return z;
    }
}

pragma solidity ^0.8.0;
contract A {
    uint public z;
    mapping(bytes32 => bytes32) hashMap;
    function set(uint _z) public {
        z = _z;
    }
    function add(uint _z) public {
        z += _z;
    }
    function subtract(uint _z) public {
        z -= _z;
    }
    function increment(uint _z) public {
        z++;
    }
    function decrement(uint _z) public {
        z--;
    }
    function modify(uint _z) public {
        z *= _z;
    }
    function transfer(uint _z) public {
        z = _z;
    }
    constructor() public {
        z = 1;
    }
    function viewFuncGet() public view returns(uint) {
        return z;
    }
}
