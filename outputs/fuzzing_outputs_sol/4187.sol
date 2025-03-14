pragma solidity ^0.8.0;
contract FallbackCaller{
    modifier onlyFallback(){if(msg.sender == address(this).functionSelector) return;_;}
    function fallback() public onlyFallback{}
    function foo() public pure{require (false);}
}
