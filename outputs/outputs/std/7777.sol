pragma solidity ^0.8.0;
contract Subroutine {
    function f(uint x1) public {
        f();
        f();
        f();
        f();
        f();
    }
    function f() public {}
}



pragma solidity ^0.8.0;
contract Subroutine0 {
    function f(uint x1) public {
        f();
        f();
        f();
    }
    function f() public {}
}
