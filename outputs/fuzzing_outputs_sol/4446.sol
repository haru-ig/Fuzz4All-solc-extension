pragma solidity ^0.8.0;


contract Caller is FallbackCaller {
   function get() public view returns (uint) {return 42;}
}
