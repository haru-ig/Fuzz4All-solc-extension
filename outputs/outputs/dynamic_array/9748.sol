pragma solidity ^0.8.0;
contract Test {
    uint public a;
    function test(uint[] memory a) public { }
}
contract Test1 {
    uint[] public a;
    function test(uint[] memory a) public { }
}
contract Test2 {
    uint[100] a;
    function test(uint[] memory a) public { }
}
contract Test3 {
    uint[64] a;
    function test(uint[] memory a) public { }
}
contract Test4 {
    uint[96] a;
    function test(uint[] memory a) public { }
}
contract Test5 {
    uint[40] a;
    function test(uint[] memory a) public { }
}
contract Test6 {
    uint[64] a;
    function test(uint[] memory a) public { }
}
contract Test7 {
    uint[250] a;
    function test(uint[] memory a) public { }
}
contract Test8 {
    uint[1000] a;
    function test(uint[] memory a) public { }
}
contract Test9 {
    uint[4096] a;
    function test(uint[] memory a) public { }
}
contract Test10 {
    uint[10**8] a;
    function test(uint[] memory a) public { }
}
contract Test11 {
    uint[4**8] a;
    function test(uint[] memory a) public { }
}
contract Test12 {
    uint[8*4**8] a;
    function test(uint[] memory a) public { }
}
contract Test13 {
    uint[64+8*4**8] a;
    function test(uint[] memory a) public { }
}
contract Test14 {
    uint[2**20+8*4**8] a;
    function test(uint[] memory a) public { }
}
contract Test15 {
    uint[10**9+8*4**8] a;
    function test(uint[] memory a) public { }
}
contract Test16 {
    uint[4**10] a;
    function test(uint[] memory a) public { }
}
contract Test17 {
    uint[8*4**10] a;
    function test(uint[] memory a) public { }
}
contract Test18 {
    uint[64+8*4**10] a;
    function test(uint[] memory a) public { }
}
contract Test19 {
    uint[2**20+8*4**
