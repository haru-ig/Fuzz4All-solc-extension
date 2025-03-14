pragma solidity ^0.8.0;
contract Contract {
    receive() external payable {}
    receive() public {}
}
contract EtherFallback {
    receive() external payable returns (uint256) {
        return 1;
    }
    receive() public returns (uint256) {
        return 2;
    }
}
