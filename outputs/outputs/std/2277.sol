pragma solidity ^0.8.0;
interface IArray is ISaveable {

    function at(uint256 index) external view returns (address) external;


    function set(uint256 index, uint256 value) external;



    function safeSet(uint256 source, uint256 dest, uint256 index) external;


    function sumTo(uint256 index) external view returns (uint256);



    function min(uint256 index) external view returns (uint256);



    function max(uint256 index) external view returns (uint256);



    function sort() external view returns (address);
}
