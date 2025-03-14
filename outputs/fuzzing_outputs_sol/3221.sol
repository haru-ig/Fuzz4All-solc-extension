pragma solidity ^0.8.0;
contract Caller {
    function _getBalance() public view returns (address) {
        (address self, uint256 amount) = Fallback(address(0)).call{value: address(this).balance}('');
        return self;
    }
}
