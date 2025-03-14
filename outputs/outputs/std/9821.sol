pragma solidity ^0.8.0;
contract C1 {
  uint public immutable value;

  constructor() {
    value = 1;
  }

  function set(uint _i) public {
    bak[0] = bak[1];
    bak[1] = bak[2];
    bak[2] = bak[3];
    bak[3] = bak[4];
    bak[4] = bak[5];
    bak[5] = bak[6];
    bak[6] = bak[7];
    bak[7] = bak[8];
    bak[8] = bak[9];
    bak[9] = bak[10];
    bak[10] = bak[11];
    bak[11] = bak[12];
    bak[12] = bak[13];
    bak[13] = bak[14];
    bak[14] = bak[15];
    bak[15] = bak[16];
    bar[0][_i] = _i;
    bar[1][_i] = _i * 2;
    bar[2][_i] = _i * 100;
    bar[3][_i] = _i * 100000;
  }

  function get(uint _idx) public view returns (uint) {
    if (0 <= _idx && _idx <= 3) {
      return bar[0][_idx];
    } else if (4 <= _idx && _idx <= 15) {
      return bar[1][_idx - 4];
    } else if (16 <= _idx && _idx <= 27) {
      return bar[2][_idx - 16];
    } else {

    }
  }

  function set(uint _idx, uint _i) public {
    if (_idx == 0) {
      value = _i;
    }
    if (_idx == 1) {
      bar[0][0] = _i;
    } else if (_idx == 2) {
      bar[1][0] = _i;
    } else if (_idx == 3) {
      bar[2][0] = _i;
    } else if (_idx == 4) {
      bar[3][0] = _i;
    } else if (_idx == 5) {
      bar[4][0] = _i;
    } else if (_idx == 6) {
      bar[5][0] = _i;
    } else if (_idx == 7) {
      bar[6][0] = _i;
    } else if (_idx == 8) {
      bar[7][0] = _i;
    } else if (_idx == 9) {
      bar[8][0] = _i;
    } else if (_idx == 10) {
      bar[9][0] = _i;
    } else if (_idx == 11) {
      bar[10][0]
