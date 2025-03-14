pragma solidity ^0.8.0;
contract A {
    uint public names;
    uint namelength;
    function set(uint x) public {
        if (x < 26) return; namelength = x; else { namelength = 26; }
    }
    function getlength() public view returns (uint l){
        return namelength;
    }
}
