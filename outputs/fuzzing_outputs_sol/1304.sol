pragma solidity ^0.8.0;
contract Contract {
        fallback() external payable {
        }
        receive() external payable {
                storage().a = 0;
        }
}
