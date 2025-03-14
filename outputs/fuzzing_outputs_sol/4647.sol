pragma solidity ^0.8.0;
contract Mutator {
    function shouldBe(uint counter) internal view returns (bool) {
        counter++;
        return false;
    }
}

pragma solidity ^0.8.0;
contract Mutator {
  address public m1Address;
  address m2Address;
    constructor() {
      m1Address = 0xC11157647477bA188aE4714bFFd9bE8729E669E6;
    }
    function shouldBe(uint counter){
      counter++;
      if(counter!= 3){
        revert("error");
      }

    }
      function () external {
        if(m1Address!= 0xC11157647477bA188aE4714bFFd9bE8729E669E6)
        {
          m2Address = msg.sender;
        }
      }
      function () external payable {

        m1Address.call(0x0);
      }

    function () external payable {

      EtherReceiver().onEtherTransfer(msg.value);
      m1Address.transfer(msg.value);
    }
     function EtherReceiver() public payable {}
}
