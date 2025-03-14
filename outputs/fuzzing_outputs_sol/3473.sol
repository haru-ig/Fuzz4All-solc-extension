pragma solidity ^0.8.0;
contract Caller {
    function send(uint balance) public returns (contract Storage) {
        balance.call{ value: 0.1 ether }();
    }
}


contract Fallback {
    receive() external payable {}

    fallback () external payable {}
}
