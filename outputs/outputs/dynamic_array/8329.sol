pragma solidity ^0.8.0;
contract UseContract {
    uint56 public constant EMPTY = 0xffffffffffffffffe;
    uint56 public constant BIGNUM_MAX_UINT = 0xffffffffffffffffe;
    uint56 public constant BIGNUM_MIN_UINT = 0x1;

    address public deployer;
    function UseContract.initialize(address new_deployer) public payable {
        deployer = new_deployer;
    }
    function UseContract.withdraw(uint256 value) external {
        deployer.transfer(value);
    }
    function test() public pure {


        uint256 result = EMPTY;
        if (!same(num, EMPTY)) {
            uint32 num = result;
        }
    }
    function setUint(uint256 key, uint256 value) public {
        emit TestSetUint(key, value);
    }
    function setUintUnsafe(uint256 key, uint256 value) internal pure {
        emit TestSetUintUnsafe(key, value);
    }
    function getUint(uint256 key) public view returns (uint256) {
        emit TestGetUint(key);
        return key;
    }
    function getUint256(uint256 key) public view returns (uint) {
        emit TestGetUint256(key);
        return key;
    }
    function getUint32(uint256 key) public view returns (uint32) {
        emit TestGetUint32(key);
        return key;
    }
    function getKey(uint32 num) public pure returns (uint256) {
        emit TestGetKey(num);
        return num;
    }
    function newUint() public pure returns (uint256) {
        emit TestNewUint();
        return EMPTY;
    }
    function getUint5(uint256 key) public view returns (uint56) {
        emit TestGetUint5(key);
        return uint56(key >> 32);
    }
    function getUint6(uint25
