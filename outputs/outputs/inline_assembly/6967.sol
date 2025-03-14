pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample85 {
    int128 public state1;
    int128 public state2;
    int128 public state3;
    int128 public state4;
    function set1(int128 value1) public {
        state1 += value1;
    }
    function set2(int128 value2) public {
        state2 += value2;
    }
    function set3(int128 value3) public {
        state3 += value3;
    }
    function set4(int128 value4) public {
        state4 += value4;
    }
    function reset(int128 value) public {
        state1 = value;
        state2 = value;
        state3 = value;
        state4 = value;
    }
    function get1() public returns(int128) {
        return state1;
    }
    function get2() public returns(int128) {
        return state2;
    }
    function get3() public returns(int128) {
        return state3;
    }
    function get4() public returns(int128) {
        return state4;
    }
}
