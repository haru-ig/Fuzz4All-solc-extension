pragma solidity ^0.8.0;
contract ExampleMutation
{
  uint8 y;
  EquivalentCompilation ec;
  uint8 initial = 0;
  constructor() public {
    initial = 1;
    ec.execute();
  }
  function changeY() public{
    y = initial;
  }
  function changeX() public{
    bytes32 returnX = ec.returnX();
    ec.mutate();
    bytes32 returnY = ec.returnY();
  }
  function changeZ() public {
    ec.mutate();
    bytes32 returnX = ec.returnX();
    bytes32 returnY = ec.returnY();
  }
}
contract ExampleMutationDemo{
  ExampleMutation ec;
  constructor() public {
    ec = new ExampleMutation;
  }
  function create() public {

    ec.changeY();

    ec.changeX();

    ec.changeX();

    ec.changeY();


    uint8 y = ec.ec.returnY();
    uint8 z = ec.returnY();
  }
}

pragma solidity ^0.8.0;
contract ExampleMutationContract {
  contract EquivalentCompilation is EquivalentCompilation {
    bytes32 public x;
    constructor( bytes32 _x) public {
      x = _x;
    }
    function getReturnX() view public returns (bytes32 x) {
      x = 'xx';
      return x;
    }
    function getReturnY() view public returns (bytes32 y) {
      y = 'yy';
      return y;
    }
    function mutate() public {
      x = 'zz';
      x = 'xx';
      x = 'zz';
    }
  }
  EquivalentCompilation ec;
  constructor() public {
    ec = new EquivalentCompilation("100");
  }
  function getReturnX() view public returns (bytes32 x) {
    x = 'xx';
    return x;
  }
  function getReturnY() view public returns (bytes32 y) {
    y = 'yy';
