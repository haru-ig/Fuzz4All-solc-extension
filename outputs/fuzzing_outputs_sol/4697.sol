pragma solidity ^0.8.0;
contract Fallback {
    function fallback() external payable {
        assembly {

            throw;
        }
    }
}
