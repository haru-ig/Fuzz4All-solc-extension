pragma solidity ^0.8.0;
contract Test93B9 {
    struct A {
        uint256[] a;
    }
    function f_() public pure returns (uint256) {
        A memory a;
        a.a.push(2501);
        return a.a.length;
    }
    function g_() public pure {
        g_();
    }
    function h_() public pure {
        h_();
    }
    function i_() public pure {
        i_();
    }
    function j_() public pure {
    }
    function k_() public pure {
    }
}
contract Test {
    struct A {
        uint256[] a;
    }
    function f_() public pure returns (uint256) {
        A memory a;
        a.a.push(2501);
        return a.a.length;
    }
    function g_() public pure {
        g_();
    }
    function h_() public pure {
        h_();
    }
    function i_() public pure {
        i_();
    }
    function j_() public pure {
    }
    function k_() public pure {
    }
}
