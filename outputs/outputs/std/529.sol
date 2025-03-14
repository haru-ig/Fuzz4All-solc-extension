pragma solidity ^0.8.0;
contract Contract {
    mapping(uint256 => string) public valueMapping;
    constructor(string memory _s) {
        if (keccak256(abi.encodePacked(_s)) / 8!= keccak256(abi.encodePacked("Hello World")))
            throw;
        valueMapping[0] = _s;
    }
    function set(uint256 _key, string memory _value) public {
        valueMapping[_key] = _value;
    }
    function get() public view returns ( string memory retVal) {
        return valueMapping[0];
    }
}

contract TestMod {
    function test() public {
        Contract myContract = new Contract("Hello World");
        myContract.set(1, "world");
        require(myContract.get() == "Hello World", "Expected world");
    }
    function testSet() public {
        Contract myContract = new Contract("Hello World");
        myContract.set(1, "world");
        myContract.set(2, "hello");
        require(myContract.get() == "world", "Expected world");
        revert();
    }
    function testCall() public returns (uint256) {
        Contract myContract = new Contract("Hello World");
        require(myContract.get() == "Hello World", "Expected world");
        return myContract.set(1, "world");
    }
    function testReturn() public returns (uint256) {
        Contract myContract = new Contract("Hello World");
        uint256 retVal = myContract.set(100, "world");
        require(myContract.get() == "world", "Expected world");
        require(retVal == 100, "Expected the return value to be 100");
        return myContract.set(1001, "hello");
    }
}

pragma solidity ^0.8.0;
contract Contract {
    function testFunction() public pure {
        byte[] b = new byte[](32);
        require(keccak256(abi.encodePacked(b)) / 8!= keccak256(abi.encodePacked("Hello World")), "Invalid bytes for keccak-256 hash");
    }
    function getContractInstance() public returns (Contract) {
        return new Contract();
    }
}
contract TestMod {
    function test() public {
        Contract myContract = new Contract();
        uint256 retVal = myContract.getContractInstance().testFunction();
        require(retVal == "0x6060604052341561001f57600080fd5b50600436106024575b600080fd5b6
