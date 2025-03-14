pragma solidity ^0.8.0;
contract Caller {
    function paymsg(address _addr, uint _amount) public payable {
        (bool success, ) = _addr.call{value:_amount}("");
    }
}
