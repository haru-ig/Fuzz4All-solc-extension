pragma solidity ^0.8.0;
contract Caller {
    function transfer(address payable to, uint256 amount) public {
        (bool success, ) = to.call{value: amount}("");
        require(success, "Failed to send Ether");
    }
}
