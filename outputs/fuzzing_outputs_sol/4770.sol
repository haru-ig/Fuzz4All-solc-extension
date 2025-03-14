pragma solidity ^0.8.0;
contract Contract1 {
    function f() public {}
    function g() internal {}
    function h() external {}
}
contract Contract2 {
    fallback function f() public pure {}
    fallback function g() internal {}
    fallback function h() external pure {}
}
contract Caller {
    function method() public {
       f();
       g();
       h();
    }
    function f() internal {}
}
