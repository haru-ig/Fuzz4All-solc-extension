pragma solidity ^0.8.0;
interface ContractInterface {
    function myFunction() public returns(uint);
}
contract Contract {
    ContractInterface contractInterface;
    constructor() public {
      contractInterface = new ContractInterface();
    }
    function myFunction() public view returns(uint) {
        return contractInterface.myFunction();
    }
}
