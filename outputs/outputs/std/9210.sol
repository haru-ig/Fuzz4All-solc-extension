pragma solidity ^0.8.0;
contract MutatingContract {
    uint256 public array;
    uint256 public constant my_value = 321;
    Constructor() {}
    modifier view_only() {
        require(msg.sender == address(this));
        _;
    }
    function incArray() public view_only returns (uint256) {
        _array.push(array + 1);
        return array + 1;
    }
}
