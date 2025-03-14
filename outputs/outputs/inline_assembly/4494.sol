pragma solidity ^0.8.0;
contract Emulator4 {
    uint x; uint y;
    function init() public {
        y = x+x; uint v = 10;
        y/v;
        x^2;
        x&x;
        uint[] memory array;
        array[2] = 3;
        y = array[0];
        y++;
        array.push(4);
        emit emitData(v1(array));
        emit emitData((v2(uint(array[1]))));
    }
    fuint256 public v1(uint[] memory) internal pure
    returns (fuint256) {
        fuint256 a;
        a[
