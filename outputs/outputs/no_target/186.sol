pragma solidity ^0.8.0;
contract Test {
    uint public k;
    constructor() public {
        k = 5;
    }
    function set(uint256 x) public { k <<= 2; }
    function get() public view returns (uint, uint){ return (k, 0); }
}


interface IERC20 {

    function totalSupply() external view returns (uint256);


    function balanceOf(address account) external view returns (uint256);



    function transfer(address recipient, uint256 amount) external returns (bool);


    function allowance(address owner, address spender) external view returns (uint256);


    function approve(address spender, uint256 amount) external returns (bool);


    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`)
