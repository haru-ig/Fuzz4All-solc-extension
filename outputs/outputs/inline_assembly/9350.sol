pragma solidity ^0.8.0;
contract A {

    int constant d = 10;
    uint constant r = 10;
    function h() public pure returns (int,uint) {
         return (d,r);
    }
}
