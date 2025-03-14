pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint names = 0x2;
    uint namelength = 0x3;
    mapping (uint => uint) public names2;

    modifier OnlyAlphabet() {
        require (alphabet == 0x1, "The alphabet is invalid.");
        _;
    }
    modifier OnlyNames() {
        require (names == 0x2, "The names are invalid.");
        _;
    }
    function modify(uint newname, uint newnamelength) public OnlyAlphabet {
        require (newnamelength  >= 2, "The name is too short.");
        names2[names] = newname;
        (names, namelength) = (newname, newnamelength);
    }
}
