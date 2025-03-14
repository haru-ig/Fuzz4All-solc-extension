pragma solidity ^0.8.0;
contract Mutator {
  uint _counter;
  modifier onlyIncrement() {
      _counter += 1;
      _;
    }
     function Increment(uint a, uint b) public onlyIncrement{
        if (b == 1) {
          _counter = 0;
        }
        b = _counter;
    }
}
contract MutatorTest {
function MutatorTest() public {
Mutator m = new Mutator();
m.Increment(0,0);
    Increment(0,0);
        AssertEq(1, _counter);

}
}
