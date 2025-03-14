pragma solidity ^0.8.0;
interface IFactory{
    function createContract(address owner) external returns (address);
}
