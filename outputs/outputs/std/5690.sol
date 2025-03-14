pragma solidity ^0.8.0;
contract M2{
    struct A {
        uint x;
        bytes32 y;
        address z;
        uint[2] q;
    }
    A a;
    bytes32 b;
    uint constant c = 4;
    bytes10[5] d;
    uint[3] e;
    bool[30] f;
    mapping (uint => bool) g;
    mapping(address => uint) h;
    constructor() public { a.x = a.x + 1; d = [a.x, a.x, a.x]; }

    function getD() public returns (uint){
        uint a = d.length;
        uint index = 34;
        uint c = d[5];
        a.a;
        a[d[4]];
        address z = d[9];
        d.length.value;
        d[10];
        c.value;
        c.a;
        byte[] memory bytes10 = new bytes10[](23[]);
        a.x;
        a = a.z;
        a = a.x;
        a.value;
        return a.z;
    }


    function callTest() public pure returns (bool isTrue) { uint a = getD(); return a.value == 23;}
    function callTest2() public pure returns (bool isTrue) { bool constant isTrue1 = callTest(); a = isTrue1; return a.value == 23;}
    function callTest3() public returns (bool isTrue){bool a = callTest2(); return a.value == 23;}
    function callTest4() public pure returns (uint) {uint a = getD(); return a.value;}
    function callTest5() public pure returns (uint) {uint[34] memory a = getD(); return a.length;}
    function callTest6() public pure returns (A memory a) {A memory a = a;}
    function callTest7() public pure returns (address) {uint a = getD(); return a.type;}
    function callTest8() public pure returns (uint8) {uint8 a = getD(); return a.value;}
    function callTest9() public pure returns (int) {int a = getD(); return a.value;}
    function callTest10() public pure returns (uint16) {uint16 a = getD(); return a.value;}
    function callTest11() public pure returns (uint32) {uint32 a = getD(); return a.value;}
    function callTest12() public pure returns (uint64) {uint64 a = getD(); return a.value;}
    function callTest13() public pure returns (int128) {int128 a = getD();
