pragma solidity ^0.8.0;
contract Caller is Modifiers {

    function() public payable {
        revert("Error: fallback function cannot be executed");
    }
}
