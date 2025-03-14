pragma solidity ^0.8.0;
contract A {
    int constant r = 12;
    function h() public returns (int,uint) {

        int i = d;
        uint u = r;

        return (i,u);
    }
}

contract TestInlineAssembly {
    function test1()
        public
        pure
        returns (int,uint)
    {
        int a;
        uint b;
        (a,b) = A.h();
        return (a,b);
    }
    function test2()
        public
        pure
        returns (int,uint)
    {
        (int i,uint u) = A.h();
        return (i,u);
    }
    function test3()
        public
        pure
        returns (int,uint)
    {
        (int i,uint u) = a();
        return (i,u);
    }
    function test4()
        public
        pure
        returns (int,uint)
    {
        (int i,uint u) = (d,r);
        return (i,u);
    }
}
