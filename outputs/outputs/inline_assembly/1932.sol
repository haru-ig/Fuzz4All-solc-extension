pragma solidity ^0.8.0;
library stringlib {
  function toHex(int x) public pure returns(string memory) {
    if (x < 0)
      return "-" + toHexString(uint256(-x));
    string memory s = uint2str(uint256(x));
    if (s.length == 1)
      return "0" + s;
    return s;
  }

  function toHexString(uint256 x) internal pure returns(string memory) {
    if (x == 0)
      return "0x0";
    uint256 digits;
    while (x!= 0) {
      digits += uint256(x % 16);
      x /= 16;
    }
    bytes memory s = new bytes(digits);
    for (uint256 i = digits; i > 0; --i) {
      s[--digits] = byte(uint8((x / (16 ** i)) + 'A' - 10));
    }
    return string(s);
  }

  function uint2str(uint256 x) internal pure returns (string memory) {
    if (x == 0)
      return "0";
   uint256 len;
    while ((x /= 10)!= 0) {
      len++;
    }
    return string(abi.encodePacked('0', repeating(string('0'), len), uint2str(uint256(x))));
  }
  function repeating(string memory s, uint256 n) internal pure returns (string memory) {
    bytes memory b = new bytes(n);
    for (uint256 i = 0; i < n; i++) {
      b[i] = s;
    }
    return string(b);
  }

}


/* To be specific, a high-level contract library that requires you to perform complex tasks can end up using Inline Assembly.

Like with any programming language, Solidity makes use of low-level functionality to perform certain task. This functionality is accessible via the compiler's Yul (Yull) language.

Yul allows you to define code that implements standard operations at very low level, while allowing for fine-tuning of the EVM by creating a language called the Yul smart-contract language (Yul-C).

To call an external function in Solidity using inline assembly, you should create a Yul contract that compiles to
