pragma solidity ^0.8.0;
contract I {
}
contract C implements I {
    function f(I i) public {}
    function g(I[] memory b) public {}
    function h(uint[][] memory u) public {}
}
