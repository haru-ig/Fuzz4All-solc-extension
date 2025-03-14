pragma solidity ^0.8.0;
contract A is Interface60, Interface70 {
    function f() external {
        f2_();
    }

    function g() external {
        fallback();
    }

    function f2_() internal{
        fallback();
    }
    function fallback() public virtual {
        log1();
    }
    function log1()internal virtual {}




    function h2_() internal virtual{
        fallback();
    }

}
contract B is A {
    function f() external pure {
        f2();
    }
    function f2() public pure {
        log2();
    }
    function log2() internal pure {}
}

contract C is B {
    constructor() B(){}
}
contract A2 is B {
}
contract B2 is B {
}
contract A3 is B2, A2 {
    function f() external pure {
        f2();
    }
    function f2() public pure {
        log2();
    }
    function h() external pure {
        h2();
    }

    function h2() public pure {}
}
