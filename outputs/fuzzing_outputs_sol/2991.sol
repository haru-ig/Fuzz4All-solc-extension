pragma solidity ^0.8.0;
interface Interface {
    function fallback(address, uint256) external payable;
}


pragma solidity ^0.8.0;
contract Fallback {
    function myContract(address payable) public payable {
        I(uint(1)).fallback(address(this), 1);
    }
}
