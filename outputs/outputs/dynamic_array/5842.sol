pragma solidity ^0.8.0;
contract Test  {
    uint16 x = 1;
    function getX() public view returns (uint16) {return x;}
    function addTwo() public returns (uint) {
        x += 2;
        return 2;
    }
}
