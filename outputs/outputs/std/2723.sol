pragma solidity ^0.8.0;

interface IArray {
    function get_max() external returns (uint8);
    function get_min() external returns (uint8);
    function get_length() external returns (uint8);
    function is_empty()external returns (bool);
    function find_index(uint8)external returns(uint);
    function set_array(uint8[], uint)external;

    function sort(uint8[])external;
    function sum(uint8[])external returns(uint);



    function set_non_constant(uint8)external;
    function get_non_constant() external view returns (uint8);
    function set_non_constant2(uint8)external;
    function get_non_constant2() external view returns (uint8);
    function set_non_constant3(uint8)external;
    function get_non_constant3() external view returns (uint8);
    event log_event();
}
