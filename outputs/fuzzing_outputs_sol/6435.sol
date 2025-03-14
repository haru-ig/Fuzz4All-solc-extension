pragma solidity ^0.8.0;
contract C {
    contract I {
       function send(address to, bytes calldata data) virtual external payable returns (uint);
    }
    uint private i;
    mapping (address => mapping (bytes32 => uint)) private map;
    address payable from;
    receive() external payable {
        i++;
        from.transfer(msg.value);
    }
}
