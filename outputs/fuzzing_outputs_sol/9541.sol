pragma solidity ^0.8.0;
interface User {
  function getUser() returns (uint);
}

contract Mutator is Caller {
  mapping (uint256 => uint) private counters;
  function mutator() public {
    if (counters[1] == 0) {
      UserStorage memory userStorage = UserStorage({
        counter: 12345,
        username: "Greger",
        money0: 3232.3
      });
      bytes memory data = abi.encode(userStorage);
      Caller(0).foo.value(500000.0)(data);
    }
  }
}

contract FallbackMutator {
  function fallbackMutator() internal {
  }
}

contract FallbackMutator1 {
  address payable user;

  modifier onlyCaller {
    user = msg.sender;
    _;
  }

  function fallbackMutator() public onlyCaller payable {
  }
}
