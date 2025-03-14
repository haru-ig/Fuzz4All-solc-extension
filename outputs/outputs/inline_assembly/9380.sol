pragma solidity ^0.8.0;
contract A {
    int constant d = 10;
    uint constant r = 10;
    function h() public returns (int,uint) {
       int x = inlineAssem(d,r);
       return (x,y);
    }
    inlineAssem(int a,uint b) public returns(int){
        return a*b;
    }
}
