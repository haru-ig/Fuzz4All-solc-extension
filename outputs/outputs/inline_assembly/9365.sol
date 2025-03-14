pragma solidity ^0.8.0;
contract A {
    int constant d = 20;
    uint constant r = 20;
    int c = 85;
    function h() public pure returns (int,uint) {
        return (d,r);
    }
}
