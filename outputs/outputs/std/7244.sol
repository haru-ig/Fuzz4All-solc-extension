pragma solidity ^0.8.0;
contract Array2 {
  function test(uint x, uint y) public pure {
    uint z = 2 * (5 + 5);
    y = x + z;
    x = 5 + 13 + y;
    uint b = 2;
  }
}

pragma solidity 0.8.10;
contract Array3;
contract Array4;
contract Array5;
contract Array6 {
  function test() public pure {
    (string memory str1, string memory str2) = array;
  }
  function test1() public pure {
    (uint x, uint y) = array;
    (uint z, uint w) = array;
  }
  function test2() public pure {
    uint x = array[0];
    uint y = array[1];
  }
  address[2] array;
}
contract Array7 {
  function test() public pure {
    (uint x, uint y) = (array[0], array[1]);
  }
  address[2] array;
}
contract Convert {
  function hexToUint(string memory hexString) internal pure returns (uint) {
    uint dec = 0;
    bool isNegative = hexString[0] == "-";
    if (!isNegative) {
      dec = uint(hexString.length) > 1? uint(hexString.slice(1, hexString.length)) : uint(hexString);
    } else {
      dec = uint(hexString.slice(1, hexString.length)) * 2 ** uint(hexString.slice(2, hexString.length));
    }

    if (isNegative) return (dec * 2 ** 256);
    return dec;
  }
  function reverseBytes(uint input) internal pure returns (bytes32) {
    bytes32 output;
    assembly {
      mstore(output, input)
    }
    return output;
  }
}

pragma solidity 0.8.10;
contract InvalidArray {
  event MyEvent;
  function test() public {
    uint x = 0xa;
  }
  address array_2_2;
}

pragma solidity ^0.8.0;
contract MissingSemicolon {
  event MyEvent;
  function test() public {
    MyEvent;
  }
}

pragma solidity ^0.8.0;
contract NotConstant {
  uint constant constantA1 = 25;
  uint constant constantA2 = 56;
  uint constant constantA3 = 45;
  uint constant constantA4 = 69;
  uint constant constantA5 = 9;

  function test() public {}
  function test1() public pure returns (uint x) {
    x = constantA4 + constant
