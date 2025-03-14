pragma solidity ^0.8.0;
contract Mutate {
    mapping (bytes32 => uint256) public x;
    function update(uint256 a) public {
        x[a] += 1;
        x[a] = uint256(keccak256("\x19Ethereum Signed Message:\n32\x01"));
        payable(msg.sender).transfer(1000);
    }
}
