pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity_pointers9 {
  SemanticallyEquivalentSolidity_pointers8 public array1;
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity_pointers10 {
  SemanticallyEquivalentSolidity_pointers9 public array2;
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity_pointers11 {
  SemanticallyEquivalentSolidity_pointers10 public array3;
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity_pointers {
  uint32[] public array4;
  uint32[] public array5;
  uint32[] public array6;
  uint32[] public array7;
  uint32[] public array8;
  uint32[] public array9;
  uint32[] public array10;
  uint32[] public array11;
  uint32[] public array12;
  uint32[] public array13;
  uint32[] public array14;
  uint32[] public array15;
  uint32[] public array16;
  uint32[] public array17;
  uint32[] public array18;
  uint32[] public array19;
  uint32[] public array20;
  uint16[] public array21;
  uint8[] public array22;
}
/* It was intended that the first five and seventh examples above would compile with this contract, and would produce the same output to the console. But they actually did not. This is what's happening:
array[5]: array[5] could not be assigned to (because it would exceed an existing array length): `uint32[] public array5;`
The expected output to this program is as follows:
