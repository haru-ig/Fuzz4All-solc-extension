pragma solidity ^0.8.0;

contract Caller {

    function set(uint _real) public {
        require(_real == 36);
    }

    receive() public payable {}
}
