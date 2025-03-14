pragma solidity ^0.8.0;
contract A {
    function A() public {}
}
contract B is A {
    function foo() public {}
    function getIntX132() public pure returns (int) {
        return 0;
    }
}
contract C is B {
    function get() public returns (int) {
        unchecked {
            int memory x132 = B.getIntX132();
        }
        return B.getIntX132();
    }
    function foo() public {
        A a;
    }
}
contract D is B, A {
    int internal x132;
    function D() public {}
}
contract E is C, D {
    function foo() public {
        B b;
        int[] memory x232x = new int[](1);
        new C();
        x232x = new int[](x232x.length + b.x132);
    }
    function get() public returns (int) {
        C c;
        unchecked {
            i[] memory x132 = new i[](1);
            new D();
        }
        return 0;
    }
}







contract B {
    function B() public {}
}
