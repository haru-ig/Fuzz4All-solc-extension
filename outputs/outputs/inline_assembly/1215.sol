pragma solidity ^0.8.0;
contract BetterProgramV3{
  bytes32 X = '100';
  bytes32 x;
  bool executed;
  constructor() public {
    x = X;
  }
  modifier onlyIfExecuted {
    executed = true;
    _;
  }
  function execute() public onlyIfExecuted
  {
    executed = false;
  }
  function mutate() public
  {
    x = bytes32(uint256(uint8(x[0] + 1) + 102));
  }
}



pragma solidity ^0.8.0;
library BetterLibraryV3{
  function f() public pure{
    bytes32 X = '100';
    bool executed;
    bool executed2;
    uint8 b = -1;
    address a;
    bytes memory c = "This is a string ".repeat(128).repeat(100);

    b = 30;
    bytes32 i;

    b += b * b;
    bytes memory memoryX = 'Hello';

    while (b > 10) {
      i += b;
      i += b*b;
      bytes memory memoryX = memoryX.sub("Hello");
      bytes32 i;
      i += b;
      b++;
    }
    while (c.length > 0){
      c.sub("Hello");
      bytes memory c;
    }
    executed = true;

    executed2 = executed;

    executed2 = executed2 || executed;
  }
}
