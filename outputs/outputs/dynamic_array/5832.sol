pragma solidity ^0.8.0;
library Test1804L {
    uint16 public array;
    function setX(uint x) public {
        require(x <= 1));
        array = x;
    }
    function getX() public view returns (uint) {return array;}
    function setTest(uint y) public {
        require(array <= y);
    }
}
