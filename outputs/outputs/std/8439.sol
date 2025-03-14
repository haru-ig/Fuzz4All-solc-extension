pragma solidity ^0.8.0;
contract ArrayMutationsC6258 {

    uint[] public numbers;
    uint public x;
    function setA(uint x_ ) public {
        x = x_;
    }
    function getA() public view returns (uint) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsC6258 {

    uint[] public numbers;
    uint public x;
    function setA(uint x_ ) public {
        x = x_;

        numbers.push(x);

        numbers[1] = 2;
    }
    function getA() public view returns (uint[]) {
        uint[] memory array = new uint[](2);
        array[0] = x;
        array[1] = 2;
        return array;
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsC6258 {
    uint public x;
    constructor(uint _x) public {

        x = _x;

    }

    function setA(uint _c) public {
        x = _c;
    }

    function getA() public view returns (uint) {

    }
}


pragma solidity >=0.8.0;

contract ArrayMutationsC6258 {

    uint[] public numbers;
    constructor() public {
        numbers.push(0x0);
        numbers.push(0x0);
        numbers.push(0x413FF020000000000000000000000000EC4B7DE6DB5D6FCB80506A74E3
