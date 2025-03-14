pragma solidity ^0.8.0;
interface Modifier1 {
    function set_caller(Caller2 _data) external;

    function get_caller() external view returns(Caller2);
}
