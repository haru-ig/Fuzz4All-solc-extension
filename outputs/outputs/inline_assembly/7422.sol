pragma solidity ^0.8.0;
contract Equivalent_contract9_new8 {
  uint constant constant2 = 9;
  uint constant constant1 = 12;
}




library IERC20 {
    function totalSupply()
        external
        view
        returns (uint256);

    function balanceOf(address who)
        external
        view
        returns (uint256);

    function transfer(address to, uint256 value)
        external
        returns (bool);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function approve(address spender, uint256 value)
        external
        returns (bool);

    function transferFrom(address from, address to, uint256 value)
        external
        returns (bool);
}


library IERC20_new {
    bool public initialized = false;
    constructor () {
        initialized = true;
    }
    function totalSupply () external view returns (uint256);

    function balanceOf(address who) external view returns (uint256);

    function transfer(address to, uint256 value) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint256);
    function approve (address spender, uint256 value) external returns (bool);

    function transferFrom(address from, address to, uint256 value) external returns (bool);
}
