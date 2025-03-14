pragma solidity ^0.8.0;
library IERC21  {
  function balanceOf(address tokenAddress, address owner) public view returns (uint256 balance);
}


pragma solidity ^0.8.0;

interface IERC223Receiver {
    function onERC223Received(address, address, uint256, bytes calldata data) external returns (bytes4);
}
