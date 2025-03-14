pragma solidity ^0.8.0;
contract S {
    fallback(uint256 a) external payable {
        emit(a);
    }
    receive() external payable {}
}
