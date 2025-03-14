pragma solidity ^0.8.0;
library MyLibrary {
  uint constant public SOME_CONST = 108630060;
  uint constant public SOME_CONST2 = 1881297306;
  uint constant public SOME_CONST3 = 255;
  function modifyConst() public {
    uint constant SOME_CONST_MODIFIED = SOME_CONST + SOME_CONST2;
    SOME_CONST3 = SOME_CONST_MODIFIED;
  }
}
