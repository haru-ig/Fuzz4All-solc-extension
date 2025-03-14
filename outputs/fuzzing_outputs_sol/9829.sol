pragma solidity ^0.8.0;
contract Caller{
    receive()public payable {

    }
}
contract Fallback{
    function () external payable {}
}
