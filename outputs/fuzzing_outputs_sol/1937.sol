pragma solidity ^0.8.0;
contract SameS {
    uint256 internal value;
    uint256 internal value1;
    constructor() {
        value = 3;
        value1 = 3;
    }
    receive() external payable {
        value += value1;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    function createContractAndFail() public payable {

        uint x;
    }

    function createAndDeployContractWithFallbackAndFail() public payable returns (address) {
        ContractAddress = type(Caller).creationAddress();
    }

    function callTheContractAndFail() public payable {
        uint x;
        x = ContractAddress.contractInstance.getPrivateUint();
    }

    function simpleCallAndFail() public payable {
        uint x;
        x = ContractAddress(0).getPrivateUint();
    }

    function simpleCallAndDeployAndFail() public payable returns (address) {
        ContractAddress = 0x2321;
    }

    function simpleCallToInstanceAndFail() public payable {
        uint x;
        x = ContractAddress(0).contractInstance.getPrivateUint();
    }

    function readValue() public view returns (uint) {
        return ContractAddress.contractInstance.getPrivateUint();
    }
}

pragma solidity ^0.8.0;
contract Data {
    uint256 public data;












}
