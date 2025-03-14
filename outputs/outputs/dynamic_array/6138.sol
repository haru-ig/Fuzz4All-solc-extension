pragma solidity ^0.8.0;
contract Test90006 {
    uint32[] aFirst;
    uint32[] aSecond;
    uint32[] aThird;
    uint32 public first;
    uint32 public second;
    uint32 public third;
    constructor (uint32 a) public {
        aFirst = new uint32[](1);
        aSecond = new uint32[](2);
        aThird = new uint32[](3);
        aFirst[0] = a;
        aSecond[0] = a;
        aSecond[1] = a;
        aThird[0] = a;
        aThird[1] = a;
        aThird[2] = a;
        first = a;
        second = a; }
    fallback () external {
    }
    event Mutate ();
    function test90006_mutated_fallback() public returns (uint32) {
        return second; }
    function test90006_mutated_state_update() public {
        first += 1;
        second -= 1; }
    function test90006_array_size() view public returns (uint32) {
        return first.length / 2; }
    function test90006_calldata_size() view public returns (uint32) {
        return 1 + second + third; }
    function test90006_calldata_size_array() view external returns (uint32) {
        uint32[] memory _array = new uint32[](1);
        _array.length = 3;
        return _array.length + first; }
    function test90006_nested_calldata_array() view external returns (uint32) {
        uint32[] memory _array = new uint32[](2);
        uint32[] memory _array2 = new uint32[](1);
        _array2.length = 3;
        _array[0] = 1;
        _array
