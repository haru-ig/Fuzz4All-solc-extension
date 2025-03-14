pragma solidity ^0.8.0;
contract myContract{
    function f() public pure returns(uint,uint){
        uint256 x = 256;
        return (x, x + 256);
    }
}
contract modifierA{
}
contract modifierB{
    function f() public pure returns(uint,uint){
        uint256 x = 256;
        return (x, x + 256);
    }
}
contract modifierC{
}
contract myContract is modifierA, modifierB, modifierC{
}
contract myContractX is modifierA{
    function f() public pure returns(uint,uint){
        uint256 x = -256;
        return (x, x + 256);
    }
}
contract modifierA2{
    function f() public pure returns(uint){
        uint256 x = 256;
        return (x, x + 256);
    }
}
contract myContract2 {
    function f() public pure returns(uint,uint160,uint160){
        uint256 a = 1;
        uint256 b = 3;
        uint256 c = 255;
        bytes memory empty;
        uint160 b2; uint160 c2;
        (uint160 n1, uint160 n2) = (a, b);
        (n1, b2) = (a, b); (a, b) = (b, c);
        (uint256 a1, uint256 a2) = (a, uint256(0));
        (uint256 n3, uint160 n4, uint256 n5) = (a, b, uint256(c));
        (2, 1, 255) = (a, b, c);
        uint256 n6 = 0xcafe;
        if (2 ** uint256(a) == 0) (n3, n4, n5) = (a, b, uint256(c));
        uint256 n7 = -2 ** 512;
        uint160 n8 = -2;
        (n7, n6) = (uint2
