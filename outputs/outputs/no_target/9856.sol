pragma solidity ^0.8.0;
library Lib {
    function g() public pure {
        emit g();
    }
    function h() public pure {
        g();
        log4("lib.h");
        emit 0;
    }
}
