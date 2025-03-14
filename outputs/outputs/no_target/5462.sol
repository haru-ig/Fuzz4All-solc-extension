pragma solidity ^0.8.0;
contract I {
    function f() public pure {
        I myI = I(0x1);
    }
    function g() public pure {}
}
contract C is I {
    function h() public pure {
        I myI = I((I,0x1));
    }
    function f() public pure {
        I myI = I((I,,0x1));
    }
    function g() public pure {
    }
}
