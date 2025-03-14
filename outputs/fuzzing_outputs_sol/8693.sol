pragma solidity ^0.8.0;
contract Caller {
    receive() public payable {
    }
    function fallback() public pure {
    }
    function sendEther(address payable _targetAddress, uint256 _amount) public pure {
        _targetAddress.call{value:_amount}("");
    }
}
