pragma solidity ^0.8.0;
interface IMultiprecision {
    function plus(uint, uint) external view returns (uint);
    function minus(uint, uint) external view returns (uint);
    function times(uint, uint) external view returns (uint);
    function div(uint, uint) external view returns (uint);
}

pragma solidity ^0.8.0;
interface IArray {
    function append(uint, uint, uint) external;
    function toBytes() external returns (bytes memory);
}
