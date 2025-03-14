pragma solidity ^0.8.0;

contract MutatedSemanticIndependence {
    uint[] accounts;
}

contract MutatedSemanticIndependence {
    uint accounts;
}

contract MutatedSemanticIndependenceMutatedSemanticIndependence {
    struct Inner {
        uint x;
    }
    uint[5] accounts;
    Inner[] public inner;
}



pragma solidity ^0.8.0;


interface IERC20 {

    function totalSupply() external view returns (uint256);


    function balanceOf(address account) external view returns (uint256);


    function transfer(address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transfer
