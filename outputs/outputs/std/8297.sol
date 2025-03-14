pragma solidity ^0.8.0;
contract MemoryMutations {
    address[] public memoryStore;
    uint256 public memorySize;
    mapping(address => uint256) public balances;
    constructor(uint memoryInitialSize) public {
        memoryStore.push(msg.sender);
        memorySize = uint(memoryInitialSize);
    }
    function addElement() public {
        if(msg.sender == address(this)) {
            memoryStore.push(msg.sender);
        }
        if(msg.sender > address(this)) {
            uint256 newBalance = balances[msg.sender]*2;
            balances[msg.sender] = newBalance;
        }
    }
}
contract MultiprecisionMutations {
    struct BigNumber {
        uint256 mantissa;
        uint256 exponent;
    }
    BigNumber public bigNumber;
    constructor(uint256 _mantissa, uint256 _exponent) public{
        bigNumber.mantissa = _mantissa;
        bigNumber.exponent = _exponent;
    }
    function addition( ) public pure returns(BigNumber memory) {
        BigNumber memory result;
        uint256 m = 7;
        if(m/2 == 0) {
            m = 1;
        }
        for(uint8 index;index<m;index++) {
            m = m * 2;
        }
        result.exponent += 15;
        result.mantissa = m;
        return result;
    }
    function subtractOnes( ) public pure returns(BigNumber memory) {
        BigNumber memory result;
        uint256 m = 7;
        if(m/2 == 0) {
            m = 1;
        }
        for(uint8 index;index<m;index++) {
            m = m * 2;
        }
        result.exponent = -5;
        result.mantissa = m;
        return result;
    }
    function multiply( ) public pure returns(BigNumber memory) {
        BigNumber memory result;
        uint256 m = 7;
        if(m/2 == 0) {
            m = 1;
        }
        for(uint8 index;index<m;index++) {
            m = m * 2;
        }
        result.mantissa *= m/2;
        result.exponent += 15;
        return result;
    }
    function divide( ) public pure returns(BigNumber memory) {
        BigNumber memory result;
        uint256 m = 7;
        if(m/2 == 0) {
            m = 1;
        }
        for(uint8 index;index<m;index++) {
            m = m * 2;
        }
        result.mantissa /= m/2;
        result.exponent = -5;
        return result;
    }
    function compareTo_BigNumbers() public pure returns(bool) {
        return(bigNumber > subtractOnes());
    }
    function compareTo_BigIntegers() public pure returns(bool) {
        return(1
