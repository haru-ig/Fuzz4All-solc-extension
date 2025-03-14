pragma solidity ^0.8.0;
contract CallerExample{
    function callerExample(uint value) public{
        value + 1;
    }
    fallback (uint  value) public{
    }
}
