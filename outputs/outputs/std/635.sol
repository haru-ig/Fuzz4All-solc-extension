pragma solidity ^0.8.0;



pragma solidity ^0.8.0;
interface IArray {
    function set(bytes32 key, bytes32 value) external;
    function set(uint256 index, uint256 value) external;
    function get(bytes32 key) external view returns(bytes32);

    function get(uint256 index) external view returns(uint256);

    function length() external view returns(uint256);

    function length(bytes32 i) external view returns(uint256);

}
