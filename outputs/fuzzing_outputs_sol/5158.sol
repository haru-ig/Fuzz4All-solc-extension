pragma solidity ^0.8.0;
contract C11 {
    function f1 () external payable virtual {}
    function f2 () public payable virtual {}
    function f3 () payable virtual {}
    fallback () virtual payable {}
    receive () virtual public payable {}
}
