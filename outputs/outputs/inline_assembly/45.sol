pragma solidity ^0.8.0;
contract B {
    uint8 private _number;
    constructor() {
      _number += 1;
      _incrementNumberB();
      _incrementNumberB();
      _incrementNumberB();
    }
    function _incrementNumberB() internal {
      _number += 1;
    }
}
contract C is B {
    event IncrementB();

    function() private {
    }

    fallback() public returns (uint8) {
        IncrementB();
    }
}
contract D is B {
    function() external {
    }

    fallback() private {
      _incrementNumberD();
    }
}
contract O {
    bytes8 _result;

    constructor(string memory str) {
      bytes memory memoryBytes = stringToBytes(str);
      _result = bytes8(toHexString(keccak256(abi.encodePacked(memoryBytes))));
    }

    function stringToBytes(string memory str) public pure returns (bytes memory) {
      bytes memory bytesString = bytes(str);
      bytes memory temp = new bytes(bytesString.length);
      for (uint256 j = 0; j < bytesString.length; j++) {
        temp[j] = bytesString[j];
      }
      return temp;
    }

    function toHexString(bytes memory b) private pure returns (string memory) {
        bytes memory hexBytes = new bytes((b.length + 1) / 2);
        for (uint256 i = 0; i < b.length; i++) {
          byte char = (b[i]);
          if (char < 16) {
            hexBytes[2 * i] = "0" + byte(char);
          }
          else {
            hexBytes[2 * i] = byte(char);
          }


          if (i < b.length - 1) {
              hexBytes[2 * i + 1] = "0";
          }
        }
        return string(hexBytes);
    }

    function doSomethingInternal() public returns (uint8) {
      _result = "Hello, World!".bytes8();
    }
}
contract F {
    function f() public {
      revert();
    }

    function g() private {
      bytes memory bytesMemory = bytes(memory(this));
      _result3 = bytes8(keccak256(bytesMemory));
    }

    function _memory(bytes _bytes) private view returns (bytes) {
      _result4 = toString(_bytes);
    }

    function toString(bytes memory _bytes) private pure returns (bytes memory) {
