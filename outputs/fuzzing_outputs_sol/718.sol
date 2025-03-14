pragma solidity ^0.8.0;
contract ContractFactory {

    function getDummyContract() public pure returns (StorageReceiver) {
        StorageReceiver contract = new StorageReceiver();
        contract.setValue(10000);
        return contract;
    }
}

contract Caller {
    StorageReceiver contractFactory;

    function getContract() public {
        contractFactory = ContractFactory.getDummyContract();
        uint value = contractFactory.getValue();

    }
}



contract CallerTest {
  function test() public {
    Caller myContract = new Caller();
    myContract.getContract();
  }
}




```

## Usage

We recommend that you only need to import and require the contract when you are testing, but when deploying contracts, consider importing and requiring the contract at a minimum to reduce the possible confusion of any other contract calls.

When you want multiple contracts with the same name, you specify them by their address in Solidity:
