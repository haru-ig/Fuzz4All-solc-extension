pragma solidity ^0.8.0;
contract MutatedCall {
  uint public value;
  constructor (uint _value) {
    value = _value;
  }
}

pragma solidity ^0.8.0;

contract VariableInConstructor {
  bool public isMutated;
  constructor( ) {
    isMutated = true;
  }
  function changeValue(uint value) public {
    isMutated = (value > 100);
  }
}
constructor (uint number) public {
  address c;
  c.call.value(number)();

}
...
*/
pragma solidity ^0.8.0;
contract InlineAssemblyInCall {
  struct Point { uint x; uint y; }

  uint public value;
  uint[] memory points;
  bytes memory helloWord;

  constructor( ) public {
    value = 0;
    points = new uint[](1);
    points[0] = 0x0800;
  }

  function getLengthAndCall() public {
    assembly {
      value := mload(helloWord)



      value := add(value, 4)

      mstore(points, 0x60)
      mstore(add(points, 0x20), 0xface)


      let ptr := mload(add(points, 0x20))


      ptr := add(ptr, 0x90)

      ptr := mload(add(bytes1ptr, 90))
      ptr := sub(ptr, 20)

      ptr := add(ptr, value)
