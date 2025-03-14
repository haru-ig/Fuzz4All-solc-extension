pragma solidity ^0.8.0;
interface A {
    function setFoo() external;
    function getFoo() external view returns (uint);
    function setBar(uint _bar) external;
    function getBar() external view returns (uint);
}
