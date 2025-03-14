pragma solidity ^0.8.0;
contract Caller {
    function _fallback() public payable {
    }
    fallback() external payable {}
    receive() external {
    }
}

pragma solidity ^0.8.0;
contract Caller3 {
    uint storage _storageValue = 5;
    function _fallback() public payable {
    }
    fallback() external payable {}
    receive() external payable {
    }
    function value() public view returns (uint) {
        return _storageValue;
    }
}
