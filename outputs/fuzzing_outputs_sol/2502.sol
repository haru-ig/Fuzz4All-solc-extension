pragma solidity ^0.8.0;
interface A {
  function test() external;
}
contract B is A {
  function test() public pure {
    assembly {
      add(100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
    }
  }
}
contract Caller {
  function get() public view returns (uint256 val) {
    A a = A(msg.sender);
    a.test();
    return a.test().transfer(msg.sender, 1);
  }
}
contract Fallback {
  function() public {
    Contract.sendValue(address(this), address(this).balance);
    return;
  }
}
contract Testing {
  function test() public pure {
    A a = A(bytes4(keccak256("test()")));
    (, ) = address(a).call("");
  }
}
contract Contract {
  function balanceOf(address _owner) public view virtual returns (uint256 balance) {}
  function sendValue(address payable _to, uint256 _value) public {
    (bool success, ) = _to.call{value: _value}("");
    require(success, "Could not send Ether.");
  }
  receive() external payable {}
}
