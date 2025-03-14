pragma solidity ^0.8.0;



contract Caller {


    receive() external payable {

    }

    function fallback() public payable {

    }


    function sendEther(address _targetAddress, uint256 _amount) public payable {
        _targetAddress.call{value:_amount}("");
    }
}
