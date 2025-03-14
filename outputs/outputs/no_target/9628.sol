pragma solidity ^0.8.0;
contract Interface_v3 {
    function bar256(uint40 input) public returns(uint256);
    function baz256(uint40 input) public returns(int256);
    function qux256(uint40 input) public returns(uint128);
    function bar32(int64 input) public returns(uint256);
}
function test() returns (uint40){
    uint160 input=12345;
    Interface_v3 interface;
    (uint256, uint256) = interface.bar256.value(13, input);
    (uint256, uint256) = interface.baz256.value(13, input);
    (uint256, uint256) = interface.qux256.value(13, input);
    interface.bar256(uint40(input));
    return uint40(input);
}

contract Interface_v32 {
    function bar(uint40 input) public returns(uint256);
    function baz(int64 input) public returns(uint256);
    function qux(uint128 input) public returns(uint256);
    function bar32(int64 input) public returns(uint256);
    function bar40(uint160 input) public returns(uint256);
    function bar48(uint64 input) public returns(uint256);
}
contract Interface_v322 {
    function bar(uint8 input) public returns(uint256);
    function bar32(int64 input) public returns(uint256);
    function bar64(uint64 input) public returns(uint256);
        }
contract Interface_v323 {
    function bar(uint40 input) public returns(uint256);
    function bar32(int64 input) public returns(uint256);
    function bar40(uint160 input) public returns(uint256);
    function bar64(uint64 input) public returns(uint256);
    function bar96(uint128 input) public returns(uint256);
    function bar128(uint256 input) public returns(
