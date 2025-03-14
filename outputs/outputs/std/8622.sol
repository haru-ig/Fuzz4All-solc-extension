pragma solidity ^0.8.0;
contract MutationEquivalence111
{
    address[] public address_array_test;
    uint[] public uint_array_test;
    uint8[] public uint8_array_test;
    mapping(address => bool) public isAdmin;
    mapping(address => bool) public isTestAdmin;
    mapping(address => string) public addresses_strings_test;
    mapping(address => bytes32) public addresses_bytes32_test;
    mapping(address => int32) public addresses_numeric_test;
    uint[] public uint_array_empty_test;
    uint8[] public uint8_array_empty_test;
    string[] public strings_array_empty_test;
    bytes32[] public bytes32_array_empty_test;
    int32[] public numeric_array_empty_test;
    uint256 public intUint_array_empty_test;
    uint256 public intUint_array_test[1];
    uint256 public intUint_array_two_elements_test;
    uint256 public intUint_big_int_array_test;


    byte[] public bytes_array_test;
    bytes32[] public bytes32_array_test;

    uint public arraylen_for_testing_uint256;

    MutationEquivalence111Mutated public m111;


    constructor() {
        timestamp = uint128(block.timestamp);
        owner = msg.sender;
    }


    modifier onlyOwner() {
        require(msg.sender == owner, "Caller must be the transaction creator");
        _;
    }


    modifier onlyTestAdmin() {
        require(isTestAdmin[msg.sender] == true, "Caller is not a test admin");
        _;
    }


    modifier onlyAdmin() {
        require(isAdmin[msg.sender] == true, "Caller is not a admin");
        _;
    }

    function arraylen() public view returns (uint) {
        return address_array_test.length;
    }


    function getMaxElementFromArray() public view returns (uint) {
        uint x = arraylen_for_testing_uint256;
        for(uint i; i<arraylen_for_testing_uint256; i++)
        {
            if(uint_array_test[i] == x) {
                return x;
            }
        }
        revert();
    }


    function getMinElementFromArray() public view returns (uint) {
        uint x = arraylen_for_testing_uint256;
        for(uint i; i<arraylen_for_testing_uint256; i++)
        {
            if(uint_array_test[i] < x) {
                return x;
            }
        }
        revert();
    }
