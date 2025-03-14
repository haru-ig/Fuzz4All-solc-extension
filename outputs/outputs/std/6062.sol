pragma solidity ^0.8.0;
interface IArray2 {
    function count() external view returns (uint);
    function get(uint index, uint offset) external view returns (uint);
    function set(uint index, uint offset, uint  ) external returns (uint  );
    function append(uint  ) external returns(uint);
    function min() external view returns (uint);
    function max() external view returns (uint);
    function sum() external view returns (uint);
    function sort() external returns (uint);
    function store(bytes memory _data) external;
    function get() external view returns (bytes memory);
}
