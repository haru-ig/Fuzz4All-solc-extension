pragma solidity ^0.8.0;
contract modifiedB {
  function f(uint8 a) public returns (uint256) {
    if( a % 2 > 1) {
      uint256 res;
      if( a < 0) {
        if( a % 2 > 1) {
          if( a < 0) {
            if( a % 2 > 1) {
              res = 4 % 2;
            } else {
              res = 3;
            }
          } else {
            if( a % 2 > 1) {
              if( a < 0) {
                if( a % 2 > 1) {
                  res = 2 % 2;
                } else {
                  res = 4;
                }
              } else {
                if( a % 2 > 1) {
                  if( a < 0) {
                    if( a % 2 > 1) {
                      res = 1 % 2;
                    } else {
                      res = 3;
                    }
                  } else {
                    if( a % 2 > 1) {
                      if( a < 0) {
                        if( a % 2 > 1) {
                          res = 5 % 2;
                        } else {
                          res = 5;
                        }
                      } else {
                        if( a % 2 > 1) {
                          if( a < 0) {
                            if( a % 2 > 1) {
                              res = 1 % 2;
                            } else {
                              res = 6;
                            }
                          } else {
                            res = 6;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      } else {
        if( a % 2 > 1) {
          res = 4 % 2;
        } else {
          res = 5;
        }
      }
    } else {
      res = 6;
    }
    return res;
  }
}
