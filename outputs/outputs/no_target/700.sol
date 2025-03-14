pragma solidity ^0.8.0;
contract BrokenExample {
    uint64 public myNumber;
    function example(uint64 _testNumber) public {
        myNumber = _testNumber;
    }
    function setValue(uint64 _testNumber) public {
        myNumber = _testNumber;
    }
}
contract BrokenExample2 {
    uint64 public myNumber;
    function example(uint64 _testNumber) public {
        myNumber = _testNumber;
    }
    function getValue() public view returns (uint64) {
        return myNumber;
    }
}
contract BrokenExample3 {
    uint64 public myNumber;
    function example(uint64 _testNumber) public {
        emit BrokenExampleEvent(_testNumber);
    }
    event BrokenExampleEvent (uint64 myNumber);
    function setValue(uint64 _testNumber) public {
        myNumber = _testNumber;
    }
}
contract ImmutableExample {
    uint64 public immutable myNumber;
    function example(uint64 _testNumber) public {
        myNumber = _testNumber;
    }
    function setValue(uint64 _testNumber) public {
        myNumber = _testNumber;
    }
}
