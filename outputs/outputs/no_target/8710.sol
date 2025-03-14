pragma solidity ^0.8.0;
contract NewCompatibleABIv08WithAbiV02 {
    function f(uint256 x) public pure {
      bytes memory buf = memory();
      assembly {
        buf := mstore(buf, mul(x, 2), 1)
      }

      x = x + 1 + 2;
      x = x + 2 * x + 3 * 2;

      uint256 y;
      bytes4 f = 0x392fead8;
      if(f(buf) >= 0 && f(buf) <= 0xffffffff &&
        (buf[0] == 0 && buf[1] == 1)) {
        if(buf[4]!= 0) {
          if((buf[2] == 0 || buf[2] == 1) && (buf[6] == 1)) {
            x -= buf[3] * buf[4];
            bytes4 x0 = 0x392fead8;
            bytes4 x1 = memory[0xfffe];
            if(x0(buf)!= x1) {
              x = x + 1 * buf * 1 * 2 + 2 + 3 * buf;
              x = x + 1 * buf * x * 1 * 2 + 2 + 3 * buf;
            }
          } else if(buf[6]!= 0) {
            if(buf[3] == 0) {
              x -= buf[3] * buf[6];
            } else {
              x -= buf[3] * buf[4];
            }
          } else {
            x -= buf[3] * buf[4];
            bytes4 x0 = 0x392fead8;
            bytes4 x1 = memory[0xfcfe];
            if(x0(buf)!= x1) {
              x = x + 1 * buf * 1 * 2 + 2 + 3 * buf;
              x = x + 1 * buf * x * 1 * 2 + 2 + 3 * buf;
            }
          }
        }
      }
    }
}
