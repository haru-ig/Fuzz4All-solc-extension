pragma solidity ^0.8.0;
contract CallerExample23 is CallerExample22 {
    function fallback(uint) public payable isContract(address(payable)) {

    }
}
