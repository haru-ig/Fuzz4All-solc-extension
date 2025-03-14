pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThree {
    mapping(uint => uint) public storage;
    function getData(uint k) public returns (uint256 x) { return storage[k]; }
    fallback() external payable {
        storage[2] = 3;
    }
}
"pragma solidity ^0.8.0;"
contract MyCallsCallAndFallbackFunctionThree {
    function getData(uint k) public returns (uint256 x) { return storage[k]; }
    mapping(uint => uint) public storage;
    fallback() external payable { storage[2] = 2; }
}
pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThree {
    function getData(uint k) public returns (uint256 x) { return storage[k]; }
    mapping(uint => uint) public storage;
    fallback() external payable {
        x = 1;
    }
}
