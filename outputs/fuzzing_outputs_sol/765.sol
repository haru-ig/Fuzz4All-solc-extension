pragma solidity ^0.8.0;
contract Modification {
  struct Tmp {
      uint32 x;
  }

  uint256 f() public view {
    uint256 i;
    for (i = 0; i < 100; i++) {
      Tmp memory m;
      m.x += 1;
      i += 1;
    }
  }
}
contract FallbackModification {
  function modify() public view {
    uint256 i;
    for (i = 0; i < 100; i++) {
      uint256 j;
      for (j = 0; j < 99; j++) {
        uint256 k;
        for (k = 0; k < 76; k++) {
          uint256 m;
          for (m = 0; m < 87; m++) {
            uint256 n;
            for (n = 0; n < 64; n++) {
              uint256 o;
              for (o = 0; o < 99; o++) {
                uint256 p;
                for (p = 0; p < 53; p++) {
                  uint256 q;
                  for (q = 0; q < 53; q++) {
                    uint256 r;
                    for (r = 0; r < 64; r++) {
                      uint256 s;
                      for (s = 0; s < 99; s++) {
                        uint256 t;
                        for (t = 0; t < 82; t++) {
                          uint256 u;
                          for (u = 0; u < 64; u++) {
                            uint256 v;
                            for (v = 0; v < 64; v++) {
                              uint256 w;
                              for (w = 0; w < 93; w++) {
                                uint256 x;
                                for (x = 0; x < 26; x++) {
                                  uint256 y;
                                  for (y = 0; y < 58; y++) {
                                    uint256 z;
                                    for (z = 0; z < 59; z++) {
                                      uint256 t0;
                                      for (t0 = 0; t0 < 80; t0++) {
                                        uint256 t1;
                                        for (t1 = 0
