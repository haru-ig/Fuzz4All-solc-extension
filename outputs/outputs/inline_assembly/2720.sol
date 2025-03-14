pragma solidity ^0.8.0;
contract A {
    uint public names;
    uint namelength;
    function setNamelength(uint x) public {
        namelength = x;
    }
    function getLength() public view returns (uint) {
        return namelength;
    }
}
