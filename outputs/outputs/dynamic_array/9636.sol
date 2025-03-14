pragma solidity ^0.8.0;
contract First {
}
contract Second extends First {
    mapping (uint256 => uint256) internal state;
    uint256 internal x;
    constructor () public {
    }
}


pragma solidity ^0.8.0;
contract SolidityArrayBasics {
    struct TestStruct {
        uint256 internal arrayUint;
    }






    bytes1 internal name;

    function TestStruct() public {
    	address addr = msg.sender;
        uint256 a = 111;
        uint256 b = true;


        TestStruct storage data = TestStruct({internal : addr});
        data.arrayUint = a;
        data.internal = b;
    }

    function getName() public view returns (bytes1) {
        return name;
    }
}
/** Create struct with array.

```
  struct TestStruct {}
  TestStruct.internal arrayUint;
```

```
  struct TestStruct {}
  Test.internal
