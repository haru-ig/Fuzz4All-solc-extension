pragma solidity ^0.8.0;
contract MutatorS6B is MutatorS6{
  function mutate() public {
    c += 1;
  }
}


pragma solidity ^0.8.0;
contract MutatorS6C is MutatorS6{
  uint256 constant c = 1;
  function mutate() public {
    c += 1;
    c += 1;
  }
}


pragma solidity ^0.8.0;
contract MutatorS6D {
  uint256 constant c = 1;
  uint256 constant d = 2;
  function mutate() public {
    c += 1;
    c += 2;
  }
}


pragma solidity ^0.8.0;
contract MutatorS6E {
  uint256 constant c = 1;
  uint256 constant d = 2;
  uint256 constant e = 3;
  function mutate() public {
    c += 1;
    c += 2;
    c += 3;
  }
}
