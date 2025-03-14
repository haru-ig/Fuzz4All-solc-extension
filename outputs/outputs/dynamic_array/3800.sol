pragma solidity ^0.8.0;
contract C {
    bytes20[1] b;
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        b.length = array.length + 1;
        bytes20 s0 = array[0];
        array[0] = s0;
        return array.length <= 1;
    }
}




pragma solidity ^0.8.5;

interface IERC20 {

    function totalSupply() external view returns (uint256);


    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to
