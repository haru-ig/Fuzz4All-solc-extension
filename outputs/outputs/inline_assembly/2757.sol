pragma solidity ^0.8.0;
contract A {
    uint public alphabet;
    bytes32 public names;
    bytes32 public namelength;
    function modify() public {
        (names, namelength) = (alphabet, 0);
    }
}

solidity ^0.8.0;
contract A {
    uint public alphabet;
    bytes32 public names;
    bytes32 public namelength;
    function modify() public {
        (names, namelength) = (alphabet, 0);
    }
    fallback () public payable {
        msg.sender.transfer(msg.value);
    }
}

contract A {
    uint public alphabet;
    bytes32 public names;
    bytes32 public namelength;
    function modify() public {
        (names, namelength) = (alphabet, 0);
    }
    fallback () public {
        msg.sender.transfer(msg.value);
    }
    receive() external payable {
    }
}
