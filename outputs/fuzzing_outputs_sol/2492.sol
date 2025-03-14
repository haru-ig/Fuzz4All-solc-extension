pragma solidity ^0.8.0;
contract MutateCaller {
  function pay(uint x, uint y) public {
    if (x > 3) {
      x++;
    } else {
      payable(msg.sender).transfer(0);
    }
  }
}


pragma solidity ^0.8.4;
contract Fallback {

    address public owner;

    constructor() {
        owner = msg.sender;
    }


    function receive() external payable {
        revert();
    }

    receive() public payable {}

    function setOwner() public onlyOwner {
        owner = msg.sender;
    }

    modifier onlyOwner{
        require(msg.sender == owner, "Only the owner can call setOwner method!");
        _;
    }
}
