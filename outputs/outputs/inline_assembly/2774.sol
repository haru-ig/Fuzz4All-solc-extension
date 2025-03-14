pragma solidity ^0.8.0;
contract B {
    uint public alphabet;
    bytes32 public names;
    uint public namelength;
    function modify(uint newname, uint newnamelength) public returns(uint) {
      return (names, namelength);
    }
}

pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint names;
    uint namelength;
    mapping (uint => uint) public names2;
    function modify(uint newname, uint newnamelength) public {
        names2[names] = newname;
        (names, namelength) = (newname, newnamelength);
    }
}
