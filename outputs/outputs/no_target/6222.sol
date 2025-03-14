pragma solidity ^0.8.0;
contract AddressGenerator {
    uint constant minValue = 0;
    uint constant increment = 1;
    uint constant maxValue = 99;
    address constant addrValue = address(this);

    address[] generatorAddress_;

    function generator_constructor() {
      generatorAddress_.push(addrValue);
    }
    function generator_getGeneratorAddress(uint index) public view
        returns(address addr)
    {
        return generatorAddress_[index];
    }
    function generateAddress(uint index) public
        view
        returns (address addr)
    {
        addr = generatorAddress_[index];
    }
    receive() external payable {}
}
