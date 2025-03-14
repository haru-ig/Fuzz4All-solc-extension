pragma solidity ^0.8.0;
contract Caller {
    function _transfer(address receiver, uint amount) public payable {

    }

    function transfer(address receiver, uint amount) public {
      _transfer(receiver, amount)
    }

    receive() public pure {
        revert("Caller contract should not receive Ether");
    }
}
