pragma solidity ^0.8.0;
contract Mutant {
    function normalCall() public payable {
    }
    fallback() payable external {
    }
    receive() external payable {
    }
    modifier noEthereum() {
        require(msg.value < 1 ether);
        _;
    }
}
