pragma solidity ^0.8.0;
contract NotYetImplementedYet {
  function callWithOutput(uint256 x) public pure returns (uint256 y) {
    return 2 * x;
  }
}
contract Greet {
    function greet() public view returns (uint8) {
        return 2;
    }
}
contract GreetToFriend {
    function greet() public view returns (uint8) {
        return 2;
    }
    function greetFriend() public view returns (uint8) {
        return 2;
    }
}
contract GreetToFriendByInterface {
    function greetInterface() public pure returns (uint8);
    function greet() public view returns (uint8) {
        return 2;
    }
    function greetFriend() public view returns (uint8) {
        return 2;
    }
}
contract GreetToFriendByInterface2 is GreetToFriendByInterface {
    function greetFriendToFriend() public pure returns (uint8);
}
contract GreetToFriendByInterface3 {
    address public friendAddr;
    function greet() public view returns (uint8) {
        return 2;
    }
    function greetFriend() public view returns (uint8) {
        return 2;
    }
    function greetFriendToFriend() public pure returns (uint8) {
        return 2;
    }
    function greetFriendToFriendByAddress(uint256 i_friendAddress) public view returns (uint8) {
        return 2;
    }
    function greetToFriend() public view returns (uint8) {
        return 2;
    }
    function greetFriendToFriendByInterface() public view returns (uint8) {
        return 2;
    }
    function greetToFriendToFriendByInterface() public view returns (uint8) {
        return 2;
    }
}
contract GreetToFriendToFriendByInterface is GreetToFriendToFriendByInterface2 {
    function greetFriendFriend() public pure returns (uint8);
}
contract CallDataBase {
  uint256 constant X = 300;

  constructor(uint256 input) public {}

  function add() public pure returns (uint256) {
      return X + 100000000000000;
  }
}
contract B {
  function subtract(uint256 x) public pure returns (uint256) {
    return 100000000000000 - x;
  }

  function multiply(uint256 x) public pure returns (uint256) {
    return 100000
