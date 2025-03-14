pragma solidity ^0.8.0;
contract SemanticsNotEquivalent13 {
    uint32 a;
    function f (uint32 x) public returns (uint32){
        a = x;
        return a + 5;
    }
}
contract SemanticsNotEquivalent21 {
    uint32 a;
    function f (uint32 x) public returns (uint32){
        a = x;
        return a + 6;
    }
}


address myRandomContractAddress;
address contractAddress = Address.fromString(uint8ArrayToString ("0x7a0152854287b355d67037e1a77918c09b246847"));
myRandomContractAddress = contractAddress;

contract SemanticsNotEquivalent22 {
    uint32 a;
    function g (uint32 x1) public returns (uint32){
        if (x1 == 3) a = 7;
        else return x1 + 2*a;
        return 6;
    }
}

contract SemanticallyNotEquivalent23 {
    uint32 a;
    function get2() public view returns (uint32,uint32,uint32){
        uint32 x = 1;
        uint32 y = 2;
        uint32 z = 4;
        return (x,y,z);
    }
}
