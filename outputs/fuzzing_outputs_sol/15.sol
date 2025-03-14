pragma solidity ^0.8.0;
contract CallerFallback2 {
    function fallback() external payable {}
}
interface Caller4 {
    function foo4(uint32);
}
contract Caller5 {
    function foo5(uint32) external payable;
}
contract Caller {
    function foo(CallerFallback) external payable;
}
