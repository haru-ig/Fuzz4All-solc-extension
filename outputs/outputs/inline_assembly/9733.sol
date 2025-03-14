pragma solidity ^0.8.0;
contract SolidityyulContract {
    function createUncertainYulContract(uint z, bool x) public returns (
    address y,
    string memory str,
    uint d) {
        UncertainYulContract yu = new UncertainYulContract();
        uint v = yu.multiply(z);
        return (address(yu), "Hello", v);
    }
}
