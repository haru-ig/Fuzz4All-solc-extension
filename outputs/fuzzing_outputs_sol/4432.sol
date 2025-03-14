pragma solidity ^0.8.0;
contract PayableCallReceiver {
    function receive(uint payable _) payable { }
    function pay() payable { }
}
