pragma solidity ^0.8.0;
contract Caller {
    function transfer(address payable to, uint256 amount) public {
        (bool success, ) = payable(to).call{value: amount + 1}("");
        require(success, "Failed to send Ether");
    }
}
