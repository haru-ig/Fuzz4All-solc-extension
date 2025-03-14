pragma solidity ^0.8.0;

function isCallerEvmAddress(address _address) internal pure returns (bool _result) {
    return _result;
}
contract NoFallbackExample {
    function nofallback() public pure returns (uint256 x) {
        return 5;
    }
}
contract ContractWithFallbackExample {

    function set(uint8 _data) public pure returns (uint256) {
        return 0;
    }
    function getNoFallbackFunction() public view returns (uint256) {
        return 0;
    }
    function getWithFallbackFunction() public pure returns (uint256) {
        return 0;
    }
    function setNonReceivingFallbackFunction() public pure returns (uint256) {
        return 0;
    }
    function setTooLowPrecietyFallbackFunction() public pure returns (uint256) {
        return 0;
    }
    function doNothing() public pure returns (uint256),

        {
            return 0;
        }
}
contract MainContractExample {
    function nofallback() public pure returns (uint256 x) {
        return 5;
    }
    function set() public pure returns (uint256) {
        return 0;
    }

    function getWithFallback() public pure returns (uint256, uint256) {

        uint256 _value = 5;
        uint256 _minNum = 2;
        uint256 _maxNum = 4;
        uint256 _avgNum = (500 + 2 * _value + _minNum + _maxNum) / 10;
        return (_value, _minNum);
    }
    function getWithLowPrecetyFallback(uint256 _minNum, uint256 _maxNum) public pure returns (uint256) {
        uint256 _value = 500;
        uint256 _avgNum = (_value + (_minNum * 2) + _maxNum) / 3;
        return _avgNum;
    }
    function doNothing() public pure returns (uint256) {
        return 0;
    }
}
contract LowLevelCallerExample {

    function doCallerLevel() public pure returns (uint256) {
        return callFallback(msg.value);
    }
    function callFallback(uint256 _value) private pure returns (uint256 res) {
        res = 0;

        /* Will be used with a fallback function in the next contract
