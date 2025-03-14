pragma solidity ^0.8.0;
contract test273 {
    uint[100][100] a;
    constructor() public {
        a[0][0] = 0;
        if (a.length == 0 ||
        a[0].length == 0) a[0][0] = 1;
    }
}



pragma solidity ^0.4.23;


contract IERC20 {

    function name() external view returns (string memory);


    function symbol() external view returns (string memory);


    function decimals() external view returns (uint8);


    function totalSupply() external view returns (uint);


    function balanceOf(address account) external view returns (uint);


    function transfer(address recipient, uint amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     *
