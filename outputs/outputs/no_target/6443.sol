pragma solidity ^0.8.0;
contract modifierC2{
    function f() public {
        require(false);
    }
}
contract A {
    modifierB2 f() public {
        if (true) {
            f();
        }
    }
    modifierB2 g1() public returns (address){
        if (true) {
            g1();
        } else {
            g1();
        }
        return address(0);
    }
    modifierB2 g2() public {
        if (true) {
            g1();
        } else {
            g1();
        }
    }
    function g3() public {
        require(false);
    }
    function g4() public
    {
        require(true);
        g1();
    }
    function g5() public
    {
        require(false);
        g1();
    }
    function g6() public
    {
        require(false);
        g1();
        g3();
        g4();
    }
    function g7() pure
    {
        g1(0);
        g1(false);
        g1(true);
        g1(1);
        g1(uint160(1));
    }
}
