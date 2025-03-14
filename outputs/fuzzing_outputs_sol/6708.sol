pragma solidity ^0.8.0;
contract Caller1 {
    function paymsg(address _to, uint _amount) public pure {
        (bool success, ) = _to.call{value:_amount}("");
    }
}
