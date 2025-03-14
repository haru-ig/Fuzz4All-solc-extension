pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutability {
  bytes32 public constant EMPTY_BYTES = "";
  uint public constant ZERO = 0;
  uint public value;
  constructor () {
    value = ZERO;
  }
  function encodeInput() public pure returns (bytes memory) {
    return abi.encodePacked(EMPTY_BYTES, value);
  }
  function runInput(uint inputLength, bytes memory input) public {
    expect(inputLength / 2 == 2);
    value = uint(input[0], input[1]);
  }
  function expect (bool test) public pure {
    if (!test) {
      reverted();
      return;
    }
  }
  function callValue(uint _value) public {
    value = _value;
  }
  function reverted() internal pure {
    revert();
  }
}
contract MutabityTest {
    function test() public returns (bytes memory) {
      Mutability _mutability = Mutability(address(this));
      uint[] memory _values = [0, 4];
      uint length = _values.length;
      bytes memory input = abi.encodeWithLength(2*length, _values);
      _mutability.callValue.value(1)(3 * 2);
      _mutability.runInput.value(1)(input.length, input);
      return abi.decode(_mutability.encodeInput(), (bytes32));
    }
}
```
## Contracts - Mutability Tests Examples List
- [Mutabity Tests in Pragmatic Solidity (Part 2) (Part 3)](https:
- [Mutabity Tests in Pragmatic Solidity (Part 1)](https:
- [Mutability and ABI encoding test](https:

## Next Up:
Next, we will investigate a more in-depth topic on Solidity's ABI encoding.
