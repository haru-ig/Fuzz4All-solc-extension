pragma solidity ^0.8.0;
contract TransferFailingSender {
    address payable _new;
    fallback() external payable {

        revert();
    }
    receive() external payable {}
}
