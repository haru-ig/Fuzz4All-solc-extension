pragma solidity ^0.8.0;
contract SemanticallyEquivalentArray{
  uint public constant SIZE = 10;
  uint[3] public test = [123423, 1233434, 423423432];
  function SemanticallyEquivalent(
    uint[SIZE] memory x,
    uint newValue,
    uint y
  ) public pure {
      x[y] *= newValue;
  }
}
contract Test {
  function run() public {
    uint[SIZE] memory x;
    uint newValue = 5;

    ModifiedArray m = new ModifiedArray;
    ModifiedArray s = new ModifiedArray;

    x[0] = 1;

    m.Modify(x, newValue, 0);
    require(m.test[0] == newValue, "Error on line 1");

    s.SemanticallyEquivalent(x, newValue, 1);
    require(s.test[0] == val, "Error on line 1");
  }`
}`
