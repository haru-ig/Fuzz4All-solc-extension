pragma solidity ^0.8.0;
interface IArray1 {
    function count() external view returns (uint);
    function get(uint index) external view returns (uint);
    function set(uint index, uint  ) external returns (uint  );
    function append(uint  ) external returns (uint);
    function min() external view returns (uint);
    function max() external view returns (uint);
    function sum() external view returns (uint);
    function sort() external returns (uint);
    function storage(bytes memory _data) external;
    function getAddressOf(uint  ) external view returns (address);
    function appendAddressOf(uint _data) external returns (uint);
    function addAddressOf(address  ) external returns (uint);
    function _addAddressOf(address _addr) public returns (uint);

    function _get(uint _index) public view returns(uint);
    function _set(uint _index, uint _data) public;
    function storageRef() public view returns (address);
    function appendUint256(uint256  ) external returns (uint);
    function addUint256(uint256  ) external returns (uint);
}
