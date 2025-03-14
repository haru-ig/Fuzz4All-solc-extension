pragma solidity ^0.8.0;
interface ITestInterface {
    function someFunction(uint param) external returns(uint256);
}
contract MutatedContactsExample178Mutated {
    event E15(uint256 indexed param);
    event E16(uint256 indexed param);
    modifier onlyAfterInit {
        require(msg.sender == ITestInterface(address(this)).someFunction(1), "Can only be ran in init");
        _;
    }
    struct TestResult {
        mapping(uint8 => bool) passed;
    }
    mapping(uint256 => TestResult) public static_results;
    mapping(address => uint) public static_addresses;
    constructor() public {
       static_results[1].passed[15] = true;
       static_results[2].passed[16] = true;
    }
    function moreOperations() public onlyAfterInit {
            static_results[1].passed[15] = false;
            static_results[2].passed[16] = true;
            static_addresses[msg.sender] = 16;
            ITestInterface(address(this)).someFunction(2);
            require(static_
