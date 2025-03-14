pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample30 {
    struct MixedContacts30 {
        uint256 f;
        uint256 g;
        uint256 h;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    function main() public view returns (MixedContacts30 memory){
        return MixedContacts30({f: a, g:b, h:c});
    }
    function setA(uint256 newValue) public {
        a = newValue;
    }
    function setB(uint256 newValue) public {
        b = newValue;
    }
    function setC(uint256 newValue) public {
        c = newValue;
    }
    function setD(uint256 newValue) public {
        d = newValue;
    }
    function setE(uint256 newValue) public {
        e = newValue;
    }
}
