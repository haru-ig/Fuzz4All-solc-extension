pragma solidity ^0.8.0;
contract BetterProgram {
  bytes32 constant X = '100';
  bytes32 x;
  bool executed;
  constructor() public {
   x = X;
  }
  modifier onlyIfExecuted {
    executed = true;
    _;
  }
  bool public isExecuted;
  function execute() public onlyIfExecuted
  {
    isExecuted =!executed;
  }
  function mutate() public
  {
    executed = false;
  }
}

pragma solidity ^0.7.0;
contract X {
uint public i = true;
}
pragma solidity ^0.7.0;
contract Y {
  X x = new X();
  constructor() public {
    x.i = false;
  }
  function comment() public {
    delete x;
  }
  function delete() public {
    delete x;
  }
}
contract Z {
  assembly {
    let y = i;
  }
}
contract O {
    constructor() public {
        delete x;
    }
    function comment() public {
        delete x;
    }
    function delete() public {
        delete x;
    }
}
contract FU {

    bytes32 const X = 'bytes';

    bytes foo = X;
    bytes32 constant X = '100';
    bytes32 constant X = 'foo';
    uint256 constant X = 1;
    bytes32 constant false = true;
    uint constant true = 0;
    function fun() public view returns (bytes memory) {
        bytes memory b = 'hi there';
        return b;
    }
}
contract YLQ extends FU {
  constructor() public { }
  function comment() public {
delete x;
  }
  function delete() public {
    delete x;
  }
}
contract C1 {
  bytes32 constant X = '1';
  bytes32 constant W = 1;
}
contract C2 {
    bytes32 constant X = '2';
    uint constant X = 0;

	uint public c = 0;
}
contract C3 {
    uint public c
