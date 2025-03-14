pragma solidity ^0.8.0;
contract MutateSomething {
    uint[] public something;
    bytes32 constant SECRET = 0x41BA99EAEF03265AA1451C02D8D7FE06E00B29DCEE0A47E6E23200A6DD987581;
    modifier onlySecret() {
        require(msg.sender == SECRET);
        _;
    }
}

contract MutatingContract is MutateSomething, SolidityFeatures {
}
