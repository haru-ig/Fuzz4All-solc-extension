pragma solidity ^0.8.0;
contract Test1804D {
    uint[] public array;
    uint public x;
    constructor() public {
        array = new uint[](1);
        x = 1;
        array[0] = 1;
    }
    function setX(uint number) public {
        require(x < 2);
        x = number;
    }
    function getX() public view returns (uint) {return x;}
}
contract Test1805E {
    uint[] public array;
    uint public x;
    constructor() public {
        array = new uint[](1);
        x = 1;
        array[0] = 1;
    }
    function setX(uint number) public {
        require(x <= number);
        x = number;
    }
    function getX() public view returns (uint) {return x;}
}
contract Test1806F {
    uint[] public array;
    uint public x;
    constructor() public {
        array = new uint[](2);
        x = 1;
        array[0] = 1;
        array[1] = 1;
    }
    function setX(uint number) public {
        require(0 <= x);
        x = number;
    }
    function getX() public view returns (uint) {return x;}
}
