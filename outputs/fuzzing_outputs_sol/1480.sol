pragma solidity ^0.8.0;
contract SemanticMutationExample3 {
    address public smartContract3;
    function semanticMutationExample(address _addr) public {
        smartContract3 = _addr;
    }
}

contract SemanticMutationExample4 {

    function safeSend ether(uint256 payable _amount) public payable {


      if (msg.value < _amount) {
        uint256 balance = address(this).balance;

        require(balance >= _amount);

        require(msg.value >= _amount);

        address payable fallback = address(this).balance;

        fallback.transfer(_amount);
      }
    }


    function safeSendEther(uint256 _amount) public payable {

        if (msg.value < _amount) {

          require(msg.value >= _amount);
          uint256 balance = address(this).balance;

          address payable fallback = address(this).balance;

          fallback.transfer(_amount);
        }
    }


    modifier requirePayable() {
      require(msg.value == _amount, "The transfer exceeds Ether amount");
      _;
    }


    receive() external payable requirePayable {}
}
