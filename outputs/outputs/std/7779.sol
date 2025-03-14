pragma solidity ^0.8.0;
contract Subroutine {
    function f(uint x1) external {
        f();
        f();
    }
    function f() public {}
}

pragma solidity ^0.8.0;
contract Subroutine {
    function f() public pure {}
}
