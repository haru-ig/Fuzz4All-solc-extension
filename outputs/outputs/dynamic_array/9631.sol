pragma solidity ^0.8.0;
contract Main {
    uint256 public contractAddress;

    function setContractAddress() public onlyContracts { contractAddress = msg.sender; }

    modifier onlyContracts {
        require(msg.sender == contractAddress, "onlyContracts");
        _;
    }



    constructor () public {
        while (contractAddress < 10) {
            setContractAddress();
        }
    }
}
