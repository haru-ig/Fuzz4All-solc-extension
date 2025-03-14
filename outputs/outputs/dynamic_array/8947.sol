pragma solidity ^0.8.0;
contract Main {
    function setStorageArray(uint _x) public {
        uint[test()] memory a = [1,2,3,4];
    }
    function setStorageStruct(NonSemanticSolidityPointers2[4] memory _y) public {
        struct z {
            uint a;
            uint b;
            uint c;
        } memory zt;
    }
    function setStorageMap(uint _z) public {
        mapping(uint => uint) k;
    }
    function setStorageMapping(uint _x) public {
        mapping(uint => mapping(uint => uint)) a;
    }
    function staticTest() public static pure returns(uint) {}
    function test() public returns(uint) {}
}
