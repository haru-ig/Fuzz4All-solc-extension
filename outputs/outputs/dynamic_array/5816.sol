pragma solidity ^0.8.0;
contract Test1804D {
    uint[] public array;
    uint public x;
    uint public num;
    uint public num2;
    constructor() public {
        array = new uint[](1);
        x = 10;
        num = x*0.25;
        num2 = x*0.25;
    }
    function setX(uint number) public {
        require(0 < number);
        x = number;
    }
    function getX() public view returns (uint) {return x;}
    function getNum() public view returns (uint) {return num;}
}
contract Test1804E {
    uint[] public array;
    uint public x;
    uint public num;
    uint public num2;
    constructor() public {
        array = new uint[](2);
        x = 10;
        array[0] = num+1;
        array[1] = num2-2;
        num = x*0.25;
        num2 = x*0.25;
    }
    function setX(uint number) public {
        require(0 < number);
        x = x*10+number;
    }
    function getX() public view returns (uint) {return x;}
    function getNum() public view returns (uint) {return num;}
}
contract Test1805F {
    struct testStruct {
        uint x;
        uint y;
        uint z;
    }
    address payable contractPublicAddress;
    mapping (address => uint25
