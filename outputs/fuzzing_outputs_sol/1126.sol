pragma solidity ^0.8.0;
interface SimpleContractInterface {
    function get() external pure returns (uint8);
    receive() external payable{}
}
