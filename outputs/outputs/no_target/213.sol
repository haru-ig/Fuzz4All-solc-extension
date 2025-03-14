pragma solidity ^0.8.0;
interface IFactory {
    function createContract(address owner) external returns (address);
    function updateCode(address addr) external;
    function getCode(address addr) view returns(bytes memory code);
}
