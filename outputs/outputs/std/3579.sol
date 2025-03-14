pragma solidity ^0.8.0;
interface IERC20 {










    function totalSupply() external view returns (uint256);


    function balanceOf(address _who) external view returns (uint256);


    function transfer(address _to, uint256 _value) external returns (bool);


    function transferFrom(address _from, address _to, uint256 _value) external returns (bool);


    function increaseAllowance(address _spender, uint256 _addedValue) external returns (bool);


    function decreaseAllowance(address _spender, uint256 _subtractedValue) external returns (bool);








    function implementsInterface(bytes4 interfaceId) external view returns (bool);
}
pragma solidity ^0.8.0;
interface IERC20Token is IERC20 {

    function totalSupply() external view returns (uint256);


    function balanceOf(address _account) external view returns (uint256);


    function transfer(address _to, uint256 _value) external returns (bool);
