pragma solidity ^0.8.0;
contract Caller {
    function paymsg(address _to, uint _amount) public call {
        (bool success,) = payable(_to).call{value:_amount}("");
    }
}
