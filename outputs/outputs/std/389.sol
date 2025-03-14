pragma solidity ^0.8.0;
contract CreateTest {
    uint[] storage a;
    function create(uint n) public {a = new uint[](n);}
    function getA() public view returns (uint[] memory) {return a;}
}
