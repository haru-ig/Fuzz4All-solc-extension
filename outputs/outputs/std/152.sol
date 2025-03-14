pragma solidity ^0.8.0;
contract Array {
    uint public max;
    uint[] public array;

    constructor(uint initMax) {
        max = initMax;
    }

    function setMax(uint newMax) public {
        max = newMax;
    }

    function add(uint value) public returns (uint) {
        if (value > max) {
            return false;
        }
        array.push(value);
        return value;
    }

    function max() public view returns (uint) {
        return array.length;
    }

    function setOne(uint i) public {
        uint val = i;
        if (i == 1) {
            val = max;
        }
        array[i - 1] = val;
    }
}

pragma solidity ^0.8.0;
contract Array {
    uint public max;
    uint[] public array;

    constructor(uint initMax) {
        max = initMax;
    }

    function mint(uint value) public {
        array.push(value);
    }

    function max() public view returns (uint) {
        return array.length;
    }
}
