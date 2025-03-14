pragma solidity ^0.8.0;
contract D {
  function bar() public {
    contract A is D {
      function bar() public {
        bytes memory input;
        uint input_size;
        function foo() external returns(uint) {
          input_size = 2;
          input += 0x43;
          while(true) {
            bar();
          }
        }
        foo();
        input += 0x53;
      }
    }
  }
}

pragma solidity ^0.8.0;
contract D {
  event Bar(uint);
  function bar() pure public {
    emit Bar(0);
  }
}
contract Caller {
  constructor() public {
    (address _d, bytes memory _input) = abi.decode(0x488269826910436556525365466556524665652465360, (address, bytes));
    call(_d, _input);
  }
  function call(address d, bytes calldata input) private {
    (uint result, ) = abi.decode(d.delegateCall(_input), (uint, ));
    require(result == uint(input.length));
  }
}

pragma solidity ^0.8.0;
contract D {
  address owner;
  receive() external payable {}
}
contract Foo {
  contract Bar is D {
    function foo(address a) {}
  }
  function bar() public returns(Bar memory) {
    Bar memory h = new Bar();
    h.foo(msg.sender);
    return h;
  }
}
contract ContractCaller {
  constructor(address foo, address d) public {
    foo.delegatecall(abi.encodeWithSignature("bar()"));
  }
}
