pragma solidity ^0.8.0;
interface IArray0 {
    function count() external view returns (uint);
    function get(uint index) external view returns (uint);
    function set(uint index, uint  ) external returns (uint  );
    function append(uint  ) external returns (uint);
    function min() external view returns (uint);
    function max() external view returns (uint);
    function sum() external view returns (uint);
    function sort() external returns (uint);
    function store(bytes memory _data) external;
    function get() external view returns (bytes memory);
    function getAddressOf(uint  ) external view returns (address);
    function appendAddressOf(uint _data) external returns (uint);
    function addAddressOf(address  ) external returns (uint);
    function _addAddressOf(address _addr) external returns (uint);
}
