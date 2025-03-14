pragma solidity ^0.8.0;
contract ContractMock {
    function foo_(unsigned _value) internal pure returns (uint256) {
        return _value;
    }
    function bar_(uint256 _value) internal pure returns (uint16) {
        return uint16(_value);
    }
}
