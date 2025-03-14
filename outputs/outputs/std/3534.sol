pragma solidity ^0.8.0;
contract Mutator {
    uint256 number;
    address owner;
    constructor(uint256 value) { owner = msg.sender; number = value; }
    function modify() public returns (uint256) {
        return(now);
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "Sender must be the address of the contract creator.");
        _;
    }
}

pragma solidity ^0.8.0;
contract Mutator {
    address owner;
    address[10] a;
    constructor (uint256 value) {
        uint256 value_1 = value + 1;
        a[0] = 0;
        a[10] = 10;
        a[7] = 6;
        a[11] = value_1;
        owner = msg.sender;
    }
    function modify() public returns (uint256) {
        uint256 _address = 0xBD2EEC82F15EC1fC312b76A5B83770F023c91c9G08975406A89202f765a1A8b9d97C242BBE07c74bDE899bB8AFd481cB0037F84C13E16c1bA597455A38868E2CDE6d4cA7d2640582f20A517D27570CCa040740477526B;
        uint256 _value = 2;
        a[1] = address(this);
        a[2] = _address;
        a[3] = bytes16(0xcd7f8c30648e7231949099a216e76d5473106164d93ca15acbf956381be4b2c003055d81faefd757d9c833ea489b320b8f79c9c12b837d4270200d4cG08975406A89202f765a1A8b9d97C242BBE07c74bDE899bB8AFd481cB0037F84C13E16c1bA597455A38868E2CDE6d4c
