pragma solidity ^0.8.0;
contract Caller {
    function callMe() public { }
}
contract CallerFallback {
    function callMe() public { receive(); }
}
