pragma solidity ^0.8.0;
contract Test {
    uint8 public x=0;
    event X(uint8 _x);
    function foo1() public onlyOwner {
        TestLib.log1(++x);
        emit X(x);
    }
    function foo2() public onlyOwner {
        TestLib.log2(++x);
        emit X(x);
    }
    function foo3() public onlyOwner {
        TestLib.log3(++x);
        emit X(x);
    }
    function foo4() public onlyOwner {
        TestLib.log4(--x);
        emit X(x);
    }
}
