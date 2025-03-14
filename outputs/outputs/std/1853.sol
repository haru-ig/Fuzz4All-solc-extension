pragma solidity ^0.8.0;
interface ArrayInterface {
    function min(uint[] storage x) external pure;

    function max(uint[] storage x) external pure;

    function sum(uint[] storage x) external pure;

    function getAddressOf(uint[] memory addressArray) external view returns (uint);
}
