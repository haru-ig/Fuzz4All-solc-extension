pragma solidity ^0.8.0;
interface IInterface_v3 {
    function bar256(uint256 input) external    ;
    function baz256(uint256 input) external    ;
    function qux256(uint256 input) external    ;
}
interface IInterface_v4 {
    function bar256(uint256[] memory input) external    ;
    function baz256(uint256[] memory input) external    ;
    function qux256(uint256[] memory input) external    ;
}
