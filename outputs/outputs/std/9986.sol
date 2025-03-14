pragma solidity ^0.8.0;
contract ArrayExampleV1 {
    uint256 length;
    uint256[999999] public array;
    uint8 offset;
    uint256[999999999] public array_2;
    int256 field1_2;
    mapping (address => uint256) field2;

    constructor() public {


        length = 100;
        offset = 200;
        array = uint256[length]();
        array_2 = uint256[999999]();
    }
}




interface IERC20 {

    function totalSupply() external view returns (uint256);


    function balanceOf(address account) external view returns (uint256);


    function transfer(address recipient, uint256 amount) external returns (bool);


    function allowance(address owner, address spender) external view returns (uint256);


    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `sender` to `recipient` using
