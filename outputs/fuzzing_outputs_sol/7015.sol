pragma solidity ^0.8.0;
contract CallerEfficient {
    function get() public returns (uint) {
        assembly {

            return((storage).balance)
        }
    }
    receive() external payable {
    }
}
