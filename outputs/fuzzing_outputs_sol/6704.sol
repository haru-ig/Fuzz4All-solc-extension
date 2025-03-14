pragma solidity ^0.8.0;
contract Caller {
    function callmsg(address _to, uint _amount) public payable {
        (bool success,) = address(_to).call{value:_amount}("");
    }

    receive() external payable {}
    receive() public pure {}
}
