pragma solidity ^0.8.0;
contract Caller {
    receive() public payable {
    }
    fallback() public payable {
    }
    function sendEther(address _targetAddress, uint256 _amount) public payable override {
        _targetAddress.call{value:_amount}("");
    }
}
