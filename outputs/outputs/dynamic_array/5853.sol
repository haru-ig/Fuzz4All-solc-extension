pragma solidity ^0.8.0;
contract Test1805I {
    uint16[] arr;
    uint16 y = 1;
    constructor() public {
    }
    function setX(uint16 number) public {
        y++;
    }
    function setX2(uint16 number) public {
        y++;
    }
    function getX() public view returns (uint16) {return y;}
    function getX2() public view returns (uint16) {return y;}
}

pragma solidity ^0.8.0;
contract Test1805J {
    uint16[] arr;
    uint16 y = 1;
    constructor() public {
    }
    function setX(uint16 number) public {
        arr.push(number);
        y++;
    }
    function setX2(uint16 number) public {
        arr.push(number);
        y++;
    }
    function getX() public view returns (uint16) {return y;}
    function getX2() public view returns (uint16) {return y;}
