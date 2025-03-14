pragma solidity ^0.8.0;
contract CInterface is IInterface_v1, IInterface_v2 {
    function qux256(uint256 input)  external    ;
}
address A;
address B;
contract C is CInterface {
    function B32(uint32 input) external    ;
    function E32(uint32 input) public       returns(uint32)   { return input; }
    function M32(uint32 input) public       throws(uint32 _error) { return 0; }
    function D32(uint32 input)  constant     returns (uint32)   { return input; }
    function G32(uint32 input)  pure                 returns (uint32)   { return input * input; }
