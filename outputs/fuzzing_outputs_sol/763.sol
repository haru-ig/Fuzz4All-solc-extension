pragma solidity ^0.8.0;
contract MutatedModification {
  function mutate() public mutates {
    uint256 i;
    for (i = 0; i < 100; i++) {
      i += 1;
      i += 1;
    }
  }
}

pragma solidity ^0.8.0;
contract CallMe {
  string public name;
  callmefunc myfunc;

  struct callmefunc {
    uint256 x;
  }

  constructor(string memory _name, callmefunc memory _func) {
    name = _name;
    myfunc = _func;
  }

  function () public view {
    myfunc.x += 1;
  }
}
contract CallMeWithoutPayable {
  string public name;
  callmefunc myfunc;

  struct callmefunc {
    uint256 x;
  }

  modifier viewonly {
    require(msg.sender!= address(0));
    _;
  }

  function CallMeWithoutPayable(string memory _name, callmefunc memory _func) {
    name = _name;
    myfunc = _func;
  }

  function callme() public viewonly view {
    myfunc.x += 1;
  }
}
