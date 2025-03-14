pragma solidity ^0.8.0;
contract TestMutated {
    function mutateUint(uint x) public returns(uint) {
        mapping (uint => mapping (uint => uint)) memory _m;
        _m[0][2] = x;
    }
}
contract MutatedString {
    function test() public {
        uint[] memory myarray;
    }
        function test() public {
