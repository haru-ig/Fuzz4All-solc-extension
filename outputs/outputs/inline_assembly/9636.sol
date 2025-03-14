pragma solidity ^0.8.0;
contract SemanticYulContract {
    address private beneficiary_ = msg.sender;
   uint internal contractCounter;
   function add() internal {
    contractCounter += 50;
      }
   function subtract(uint x) internal pure returns (uint) {
        return 8 + x;
    }
    function multiply(uint x) internal pure returns (uint) {
        return x*x*x;
    }
     function divide(uint x) internal pure returns (uint) {
        return x*x*x*x;
    }
       function power(uint x) internal pure returns (uint) {
     return x*x*x*x*x;
    }
    modifier payable {
        uint totalBalance = address(this).balance;
        require (msg.value >= totalBalance / 20, "Your balance lower then 20 eth");
        _;
    }
    function() external payable {
      _;
    }
    function changeAddress() external {
       beneficiary_ = msg.sender;
    }
}
contract SemanticYulMutatedContract {
    SemanticYulContract internal mutatedContract_;
    modifier canMutate {
        mutatedContract_ = new SemanticYulContract();
        _;
    }
    function changeContract(SemanticYulContract _mutatedContract) public{
    mutatedContract_ = _mutatedContract;
    }
    function add() public if(mutatedContract_!= null) {
       mutatedContract_.add();
     }
    function subtract(uint x) public if(mutatedContract_!= null) {
        uint result = mutatedContract_.subtract(x);
        require(result > 3, "Incorrect result at subtraction operation");
      }
    function multiply(uint x) public if(mutatedContract_!= null) {
        uint result = mutatedContract_.multiply(x);
        require(result > 8, "Incorrect result at multiplication operation");
      }
    function divide(uint x) public if(mutatedContract_!= null) {
        uint result = mutatedContract_.divide(x);
        require(result > 150, "Incorrect result at division operation");
      }
    function power(uint x) public if(mutatedContract_!= null) {
        uint result = mutatedContract_.power(x);
        require(result > 3264, "Incorrect result at power operation");
      }
