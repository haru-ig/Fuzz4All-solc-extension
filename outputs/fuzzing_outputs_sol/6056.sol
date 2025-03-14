pragma solidity ^0.8.0;
contract EtherTester {
    event Fallback();
    receive() external payable {
        emit Fallback();
    }
    fallback() external payable {}
}
