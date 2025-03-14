pragma solidity ^0.8.0;
contract I_Array {
    function get_length() external view returns (uint) {}
    function get_min() external view returns (uint) {}
    function get_max() external view returns (uint) {}
    function set_array(uint[] calldata vals) external;
    function is_sorted() external view returns (bool) {}
    function sort(uint[] calldata inlist) external;
}
