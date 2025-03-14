pragma solidity ^0.8.0;
contract Caller {
    address payable to;

    function transfer(uint256 amount) public {
        require(to.send(amount), "Failed to send Ether");
    }
}
