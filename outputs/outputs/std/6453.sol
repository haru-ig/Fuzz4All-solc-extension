pragma solidity ^0.8.0;
contract Array {
    function sum(uint256[] memory arr) public pure returns (uint256) {
        uint256 arrLength = arr.length;
        uint256 result = 0;
        uint256 i = 0;
        while(i < arrLength) {
            result += arr[i];
            i++;
        }
        return result;
    }
}

pragma solidity ^0.8.0;
library Array {
    function popLastString(string memory str) internal returns (string memory) {
        uint256 len = str.length;
        string memory substr0_50 = str.slice(0, 50);
        string memory substr51_99 = str.slice(substr0_50.length + 1, len);
        return substr51_99;
    }
}




interface IERC2930 {
  function transfer(address to, uint256 value) external returns (bool ok);
}


interface IERC2315 {

  function underlying() external returns (address);

  function setUnderlying(address _) external;

  function onGetCurrentToken(address calldata callback) external;

  function handleTokenEvent(address calldata callback) external;


  function totalSupply() external view returns (uint256);


  function balanceOf(address account) external view returns (uint256);


  function safeTransfer(address to, uint256 _amount) external;
  /**
   * @dev Calls `onBalanceSetHook` in the contract and invokes it with the actual
   * value on the token.
   *
