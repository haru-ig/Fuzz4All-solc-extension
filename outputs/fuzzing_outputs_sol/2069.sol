pragma solidity ^0.8.0;
contract Mutater2 is Mutater3 {
    fallback() external payable { }
    function setContractAddress(address _address) public {
        require(msg.sender!= contractAddress,
            "Cannot mutate address of contract in this method!");
        Mutater3.setContractAddress(address(_address));
    }
}<fim_middle>contract Caller {
    Mutater2 public mutator;
    constructor(address _address) {
        setContractAddress(_address);
    }
    function setMutatorAddress(address _address) public {
        mutator = Mutater2(_address);
    }
    function getContractAddress() public view returns (address) {
        return Mutater3.getContractAddress();
    }
    function receive(address _contractAddress, uint256 _data) external {
        uint256 expectedAddress = getContractAddress();
        mutator.setContractAddress(_contractAddress);
        mutator.setMutatorAddress(address(this));

        require(_contractAddress == expectedAddress, "E.FCT is not the same as the mutator's address");
        mutator.setMutatorAddress(address(0));
    }
}
