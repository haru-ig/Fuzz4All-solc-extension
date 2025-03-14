pragma solidity ^0.8.0;
contract User {
    event LogMessage(string msg);

    function _callFallback() public {
        Caller(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee80)._fallback();
    }
    function fallback() external payable {}
}

pragma solidity ^0.8.0;
interface IERC20 {
  function transfer(address to, uint256 value) external returns (bool);
  function approve(address spender, uint256 amount) external returns (bool);
  function balanceOf(address who) external view returns (uint256);
}

pragma solidity ^0.8.0;
contract ERC20 {
  function isERC20() public pure virtual returns (bool) {
    return true;
  }
}
