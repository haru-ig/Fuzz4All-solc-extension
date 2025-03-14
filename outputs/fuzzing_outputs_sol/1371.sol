pragma solidity ^0.8.0;
contract C {
    function fallback() payable public {
        require(msg.value == 0, "contract.fallback: Sender sent too much Ether");
    }
    receive() payable public {
        require(msg.value == 0, "Fallback call. Value!= 0");
    }
    mapping(address => bool) public allowance;
}
