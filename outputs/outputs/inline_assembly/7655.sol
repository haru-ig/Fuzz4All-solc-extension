pragma solidity ^0.8.0;
contract L6 {
    uint constant initialx = 0x01456001;
    mapping (uint => uint) state;
    function f() public pure returns (uint) {
        require(
          (initialx + 0x3FFEFFCF) <= (0x7FFFFFFF),
          "Arithmetic Overflow"
        );
        state[0] = initialx + 0x00008799 + 0x01234567 + initialx + 0x02345673 + initialx;
      uint ret = state[initialx + 0x00008799 + 0x01234567 + initialx + 0x02345673 + initialx] - initialx + 0x3FFEFFCF;
      require(ret == state[initialx + 0x00008799 + 0x01234567 + initialx + 0x02345673 + initialx], "Arithmetic Overflow");
      int k = 0;
      while (k < 10000){
        ret = (state[initialx + 0x00008799 + 0x01234567 + initialx + 0x02345673 + initialx]) - initialx - 0x00008799;
        state[initialx] = k + ret ;
        k = k + 1;
      }
      return ret;
    }
}
