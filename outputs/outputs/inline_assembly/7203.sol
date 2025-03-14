pragma solidity ^0.8.0;
struct EmptyStruct{ }


pragma solidity ^0.8.0;
interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function authorize_for_access(address account) public ;
}
