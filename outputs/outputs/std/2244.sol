pragma solidity ^0.8.0;
contract MutationQ5 {
    uint constant constant1 = 1;
    uint constant constant2 = 22;
    uint x;
    uint constant constant3 = 10;
    bool b;
    address owner;
    mapping(bytes32 => address) public ownerToAddr;
    address[] allOwners;
    constructor(){
     allOwners.push(msg.sender);
      owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setQuux() public onlyOwner {
        b = true;
    }
    function mutant1() public view returns (uint) {
        uint constant30 = constant1 + 2 * constant3;
        return constant2 + 2 * constant30;
    }
    function getQuux() public view returns (uint) {
        uint constant29 = constant1 + 2 * constant2;
        return constant29 + x;
    }
    function setFirstRandom(uint firstNumber) public onlyOwner{
        x = firstNumber;
    }
    function setSecondRandom(uint secondNumber) public onlyOwner {
        require(x < secondNumber, "X must be less than or equal to the Y");
    }
    function setThirdRandom(uint thirdNumber) public onlyOwner {
        require(x > thirdNumber, "X must be greater than or equal to the Y");
    }
    function getThirdRandom() public view returns (uint) {
        return x;
    }
    function withdrawFunds() public onlyOwner {
        msg.sender.transfer(address(this).balance);
    }
    function takeOwnership() public onlyOwner {
        address newAddress = msg.sender;
        address[] storage newArrayOfAddresses = allOwners;
        newArrayOfAddresses[newArrayOfAddresses.length] = newAddress;
    }

}

pragma solidity ^0.8.0;
contract MutationQ6 {
    uint constant constant1 = 1;
    address constant addr1 = 0x0012345667784556;
    uint constant constant2 = 22;
    uint x;
    uint constant constant3 = 10;
    uint constant constant4 = 1;
    uint constant constant5 = 1;
    uint constant constant6 = 2;
    uint constant constant7 = 29;
    uint constant constant8 = 2;
    uint constant constant9 = 15;
    bool b;
    address owner;
    mapping(bytes32 => address) public ownerToAddr;
    address[] newAddresses;
    function getQuux() public view returns (uint) {
        return  19;
    }
    function set
