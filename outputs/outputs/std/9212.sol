pragma solidity ^0.8.0;
contract MutatingContract {
    uint256 public array;
    modifier view_only() {
        require(msg.sender == address(this));
        _;
    }
    function incArray() public view_only returns (uint256) {
        return array + my_value;
    }
}

pragma solidity ^0.8.0;
contract MutatingContract {
    uint256 public array;
    modifier view_only() {
        require(msg.sender == address(this));
        _;
    }
    function incArray1() public view_only returns (uint256) {
        return array + 2 * my_value;
    }
    function incArray2() public view_only returns (uint256) {
        return array + 2 * my_value;
    }
}
