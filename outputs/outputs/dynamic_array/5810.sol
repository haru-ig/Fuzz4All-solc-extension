pragma solidity ^0.8.0;
contract Test1801A {
    uint[] public array;
    uint public x;

    constructor() public {
        array = new uint[](1);
        x = 1;
        array[0] = 1;
    }

    function setX(uint number) external {
        require(0 <= x && x < 1);
        x = number;
    }

    function getX() external view returns (uint) {return x;}
}

contract Test1802B {
    uint[] public array;
    uint public x;

    constructor() public {
        array = new uint[](1);
        x = 1;
        array[0] = 1;
    }

    function setX(uint number) public {
        require(0 <= x && x < 1);
        x = number;
    }

    function getX() public view returns (uint) {return x;}
}

contract Test1803C {
    uint[] public array;
    uint public x;

    constructor() public {
        array = new uint[](1);
        x = 0;
        array[0] = 1;
    }

    function setX(uint number) public {
        require(0 < number);
        x = number;
    }

    function getX() public view returns (uint) {return x;}
}
