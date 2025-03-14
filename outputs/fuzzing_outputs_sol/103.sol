pragma solidity ^0.8.0;
contract MutatedFallbackFunctionThreePlusFallbackFunction {
    constructor() { }
    fallback() external payable { }
    function getData(uint k) public returns (uint256 x) {
        require(msg.data.length <= 32, "Data too long");
        x = 2;
    }
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract MutatedFallbackFunctionThreePlusFallbackFunctionTwo {
    constructor() { }
    fallback() external { }
    function getData(uint k) public returns (uint256 x) {
        require(msg.data.length <= 32, "Data too long");
        x = 2;
    }
    receive() external { }
}

uint256[6] private _;
constructor() { }
uint256 externalGetRandomNumberFromZeroToTen() public view returns (uint256) {
    _;
    return 3;
}
fallback() public payable { }
fallback() public payable {}
fallback() public payable {}
fallback() public payable {}
function callFallbackFunction() payable { }
function callFallbackFunction() payable { }
