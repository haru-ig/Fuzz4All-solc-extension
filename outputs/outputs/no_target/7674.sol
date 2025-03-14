pragma solidity ^0.8.0;
contract Test {
    function g() internal pure {
        uint64 x;
        (x, );
    }
}
module Test {
    contract C {
        function f() public pure {
            uint64 x;
            f();
            (x, );
            g();
        }
        function g() internal pure {
        }
    }
    function h() internal pure {
        C c = new C();
        (, ) memory;
        (, ) memory;
        (, ) memory;
        (, ) memory;
        (, ) memory;
        ;
    }
}
