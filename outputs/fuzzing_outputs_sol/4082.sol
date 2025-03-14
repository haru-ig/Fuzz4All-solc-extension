pragma solidity ^0.8.0;
contract Mutation13 {
  function myMutantFallback(uint256 _amount) public {
    _amount--;
  }
}

pragma solidity ^0.8.0;
contract Mutation14 {
  function myMutantFallback(uint256 _amount) public { }
}
contract Mutation15 {
  function myMutantFallback(uint256 _amount) public pure {
    _amount--;
  }
}
contract Mutation16 {
  function myMutantFallback(uint256 _amount) public {
    _amount--;
  }
}
contract Fallback { }
contract Mutation18 {
  function myF() public {
    address myCaller = msg.sender;
    Fallback[] memory addresses = new Fallback[](1);
    myCaller.call.value(msg.value/23)("");
    uint256 _amount = 45;
    addresses[0].myF.delegatecall(abi.encodeWithSignature("x()", _amount));
    addresses[0].myMutantFallback.delegatecall(abi.encodeWithSignature("x23", _amount));
    require(msg.sender == myCaller);
  }
}
