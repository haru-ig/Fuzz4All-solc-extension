pragma solidity ^0.8.0;
interface IERC223 {


    function approve(address _spender, uint256 _value) external returns (bool);


    function transferFrom(address _from, address _to, uint256 _value) external returns (bool);
}
