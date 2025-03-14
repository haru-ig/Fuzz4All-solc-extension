pragma solidity ^0.8.0;
contract Main3 {
    constructor() { main3();}
    function modify() public pure{
        uint[] memory a = new uint[](1);
        a[0] = 1234;
    }
    function main3() public pure{
        uint[] memory a = new uint[](2);
        a[0] = 1234;
        a.length = 0;
    }
}
