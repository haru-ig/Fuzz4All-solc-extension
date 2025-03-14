pragma solidity ^0.8.0;
contract P3 {
  uint160 public p3;
  function h (uint x) internal returns (uint256 xCopy) {
    xCopy = p3;
  }
}
contract P4 {

  uint16 internal p4;

  function foo() internal {
    p4 == 6;
    p4 == 6;
  }

  function test2() public {
    p4 == 6;
    p4 == 6;
  }

}
contract P5{
  using Counters for Counters.Counter;
  Counters.Counter public counter;

  function test3() public {
    counter.add(1);
    counter.add(1);
  }

  function test4() public {
    uint256 count = counter.count();
    assert(count == 2);
  }
}
contract P6 {   pragma solidity ^0.8.0;
  contract Counter {
    uint256 value;
    function increase() internal { value = value.add(1); }
    function decrease() internal { value = value.sub(1); }
    function count() public view returns (uint256) { return value; }
    modifier restricted() {
      increase();
      _;
      decrease();
    }
  }



  using Counters for Counter.Counter;
  Counter.Counter public counter;






  function foo() internal {
      counter.increase(); counter.increase();
  }




  function reentrant() public {
      counter.increase();
      foo();
      assert(counter.value == 3);
  }

  function test5() public {
    assert(reentrant() == true);
    foo();
    uint256 count = counter.count();
    assert(count == 3);
  }
}
