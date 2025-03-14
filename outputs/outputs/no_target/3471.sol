pragma solidity ^0.8.0;
contract m07_ {
    function M8(uint256 _a, uint256 _b, uint256 _c) public {
        uint256 a;
        a = 0;
    }
}

pragma solidity ^0.8.0;
contract m07_ {
    function M9(uint256 _a) public pure {
    }
}

pragma solidity ^0.8.0;
contract m07_ {
    function M10(uint256 _a, uint256 _b, uint256  0x0) public view returns (uint256 a) {
    }
}




interface IERC20 {

    function totalSupply() external view returns (uint256);


    function balanceOf(address account) external view returns (uint256);


    function transfer(address recipient, uint256 amount) external returns (bool);


    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate randomness.
     * One possible solution to mitigate this race condition is to first reduce the spender's
     * allowance to 0 and set the desired value afterwards:
     * https:
