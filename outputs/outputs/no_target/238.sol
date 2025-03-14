pragma solidity ^0.8.0;
interface IMutable {
    function _mutate() external;
}
interface IImmutable {
    function balance() external view returns (uint);
    function _mutate() external;
}
