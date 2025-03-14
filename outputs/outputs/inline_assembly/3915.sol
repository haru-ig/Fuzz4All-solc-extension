pragma solidity ^0.8.0;
contract SemanticallyEquivalent21 {
  uint[26] array;
  uint maxLength = array.length;
  function setValue(uint idx, uint newVal) public {

    array[idx] = newVal;
    array[idx + 1] = newVal;

    array[maxLength + 1] = newVal;
    array[maxLength + 2] = newVal;

    assembly {
      array := add(array, 32)
      maxLength := add(maxLength, 32)
    }
  }
}
contract SemanticallyEquivalent22 {
  struct Foo { uint x; uint y; }
  uint[26] array;
  uint maxLength = array.length;
  function setValue(Foo memory _newVal) public {

    array[idx] = Foo(_newVal);
    array[idx + 1] = Foo(_newVal);

    array[maxLength + 1] = Foo(_newVal);
    array[maxLength + 2] = Foo(_newVal);

    assembly {
      array := add(array, 32)
      maxLength := add(maxLength, 32)
    }
  }
}
contract SemanticallyEquivalent23 {
  struct Foo { uint x; uint y; }
  struct Bar { uint x; uint y; }
  uint[26] array;
  uint maxLength = array.length;
  function setValue(Foo memory _newVal, Bar memory _newBarVal) public {

    array[idx] = Foo(_newVal);
    array[idx + 1] = Foo(_newVal);

    array[maxLength + 1] = Foo(_newVal);
    array[maxLength + 2] = Foo(_newVal);
    array[maxLength + 3] = Bar(_newBarVal);
    array[maxLength + 4] = Bar(_newBarVal);

    assembly {
      array := add(array, 32)
      maxLength := add(maxLength,
