pragma solidity ^0.8.0;

contract MutateMutator2 {
    bytes32 private constant BEEP_BEESWAX = 0xaa6a0b63b3e6f6f7075df5e8a89c5a4ff626cd17c6f2941ba77ce6a32046af277d412759d7bb4be8da35bb5a50a1db5ea42a9476b3115e9bf32c136be8ac233;
    bytes32 private constant BEEP = BEEP_BEESWAX;
    bytes32 private constant BEEP_X = 0x6bbfd507f6bebf1f530a415fb2844b79e400da288eccc3e1d21df25e24360700;


    mapping (address => bytes32) internal contracts;


    function setFallback(bytes32 _contract) public onlyMutators {
        contracts[_contract] = _contract;
    }



    fallback() external payable {
        bytes32 contract = contracts[msg.sender];
        if (!address.isContract(contract)) {
            revert(BEEP);
        }
        else {

            Mutator2(contract).payWithFallback(msg.sender);
        }
    }

    modifier onlyMutators() {
        require(msg.sender == address(BEEP) || msg.sender == address(0x6bbfd507f6bebf1f530a415fb2844b79e400da288eccc3e1d21df25e24360700), "!onlyMutators");
        _;
    }
}
