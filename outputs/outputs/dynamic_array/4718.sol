pragma solidity ^0.8.0;
contract OriginalContract {
    function MutateData() public {

    }
}

pragma solidity ^0.8.0;
contract SimpleContract {
    OriginalContract private contract;

    function MutateData(uint number) public {
        contract = OriginalContract(address(1));
        contract.MutateData();
    }
}
