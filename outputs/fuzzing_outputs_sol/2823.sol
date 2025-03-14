pragma solidity ^0.8.0;
contract Caller {
    function () external payable { }
    receive () external payable { }
    fallback () public payable { }
}
