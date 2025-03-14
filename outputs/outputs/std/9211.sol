pragma solidity ^0.8.0;
contract MutatingContract {
    uint256 public array;
    int256 public signed_data;
    uint256 public const x = 44;
    uint256 public const y = 86;
    bool public signed_data_is_even;
    uint256 public constant mantissa = 10000000000000000000000000;
    uint256 public constant mantissa_value = 9861600000000000000000000;
    uint256 public constant result = x * (y - 1);

    mapping(uint256 => uint256) public value_x_y;
    uint256 public constant value_x = uint256(uint32(x) << 128) | uint256(x);
    uint256 public constant value_y = uint256(uint32(y) << 128) | uint256(y);
    constructor() {
        signed_data = 10 + mantissa / mantissa_value;
        signed_data_is_even = signed_data % 2 == 0;
    }
    modifier view_only() {
        require(msg.sender == address(this));
        _;
    }
    function incArray() public view_only returns (uint256) {
        return array + 1;
    }
}
