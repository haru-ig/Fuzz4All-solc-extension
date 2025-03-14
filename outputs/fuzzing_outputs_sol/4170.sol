pragma solidity ^0.8.0;
contract Caller{
    function() public payable {

        (bool success, ) = address(msg.sender).call{value:msg.value}("");
        require(success, "");
    }
    receive() public pure {}
    fallback() public pure {}
}
