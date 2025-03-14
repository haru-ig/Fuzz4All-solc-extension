pragma solidity ^0.8.0;
interface I {} contract D {} struct E { I e; I f; } contract C { bool public b; E public c; bool f; uint256 h; }


contract Main {
    function f() external {
        C c;
        b: c.b = false;
        unchecked {

            c.f = address(0);
        }
        delete c;
    }

    function g() external {
        C storage c = C(address(0));
        b: c.b = false;
        unchecked {
            c.f = address(0);
        }
        delete c;
    }
}
