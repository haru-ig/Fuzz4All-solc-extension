pragma solidity ^0.8.0;
contract MutatedSemanticTest is SemanticTest {
    constructor() {}
    function setXMax(uint _xMax) external {
        uint xMaxOld = xMax;
        xMax = _xMax;
        Data storage test = data;
        test.x = 0;
        test.x = _xMax + 1;
        test.x = xMaxOld + 1;
    }
}


pragma solidity ^0.6.2;


interface IERC20 {

    function totalSupply() external view returns (uint256);


    function balanceOf(address account) external view returns (uint256 balance);


    function transfer(address recipient, uint256 amount) external returns (bool);


    function allowance(address owner, address spender) external view returns (uint256);


    function approve(address spender, uint256 amount) external returns (bool);

    /**
    * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     *
