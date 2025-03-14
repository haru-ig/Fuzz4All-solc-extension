pragma solidity ^0.8.0;
interface Mutator{
    fallback() external payable{}
    receive() external payable{}
}
