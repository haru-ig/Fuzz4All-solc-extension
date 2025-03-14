pragma solidity ^0.8.0;
contract MutatorS7 {
uint8 constant ONE = 1;

uint256 c = ONE;
    function mutate() public {
        c++;
        c++;
        c++;
    }
}
pragma solidity ^0.8.0;
contract MutatorS6 {
uint16 constant ONE = 1;

uint256 c = ONE;
    function mutate() public {
        c++;
        c++;
        c++;
    }
}
pragma solidity ^0.8.0;
contract MutatorS6b {
uint16 constant ONE = 1;

uint256 c = ONE;

  function mutate() public returns (uint256) {
     c+=1;
     c+=1;
     return c;
  }
}
pragma solidity ^0.8.0;
contract Mutator {
uint8 constant ONE = 1;

uint256 c = ONE;

    function mutate() public {
        c++;
        c++;
    }
}
pragma solidity ^0.8.0;
contract Mutatorb {
uint16 constant ONE = 1;

uint256 c = ONE;

  function mutate() public {
     c+=1;
     c-=1;
  }
}
