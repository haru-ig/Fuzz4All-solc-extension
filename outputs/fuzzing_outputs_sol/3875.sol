pragma solidity ^0.8.0;
contract Example6 {
    fallback() external payable {
        revert("The contract didn't receive Ether");
    }
}
