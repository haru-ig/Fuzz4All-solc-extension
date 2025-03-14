pragma solidity ^0.8.0;
contract C41_bug405548028556 {
  uint160 c = 0xc553a35cb9f495bf4be51a290393c30f736413633ba23bc6bc8783cd182c0049;
  function() public { c = uint160(uint(uint8(c))); }
}
