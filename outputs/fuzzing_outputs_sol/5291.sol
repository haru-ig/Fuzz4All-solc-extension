pragma solidity ^0.8.0;
interface Fallback5
{
        function f(uint64 x, mapping (uint8 => address) mem) external;
        function g(mapping (uint8 => address) mem) external;
        function h(uint64 x) external;
        function i() external;
}
