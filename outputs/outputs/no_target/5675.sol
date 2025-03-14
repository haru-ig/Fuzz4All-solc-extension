pragma solidity ^0.8.0;
contract Foo{
    uint public x;
    uint public x2;
}

pragma solidity ^0.8.0;
contract Foo{
    uint public x;
    uint public x2;
}

pragma solidity ^0.8.0;
contract Foo{
    uint public x;
    uint public x2;
}
pragma solidity ^0.8.0;
contract Foo{
    uint public x;
    uint public x2;
}
contract C{
    function f() public {
      assembly {
        foo
        let callData := mload(add(calldata, 0x20))
        calldatacopy(drop(0x20), callData)
        let data := mload(callData)
        let result := 0
        result := call(0, add(callData, 0x20), data, 10)
        mstore(0, result)
      }
    }
  function g(uint x, uint y) public view returns (address addr, uint y2) { return (msg.sender,0) }
}
contract D{
  function f() public {
    c.x.x2 = 1;
    c.f();
  }
}
contract E{
    uint public y;

    function f() public {
        y = 256 - 1;
        require(y >= 0);
        C d;
        assembly {
            let ptr := mload(add(calldata, 0x20))
            let callobj := addr(d)
            callobj(ptr, 1)
        }
    }
}
