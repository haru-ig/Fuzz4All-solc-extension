pragma solidity ^0.8.0;
contract BreadMilkExample {
    function callIn() public pure {
      uint a;
      a = msg.value;
    }
}

contract BreadMilkExample {
    function receiveEther(address _from, uint _value) public pure {
      address(this).transfer(_value);
    }
}
