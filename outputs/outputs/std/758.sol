pragma solidity ^0.8.0;
interface MinterInterface {
  function mint() external view;
}
contract Mintable is MinterInterface{

  address public minter;

  constructor() {
   minter = msg.sender;
  }

  modifier onlyMinter() {
    require(msg.sender == minter,'Minter is not authorized to call this function!');
    _;
  }


  function mint() external onlyMinter {
    uint10 amount = 7;

   uint[2] memory mem = [amount, amount];
   assembly {
   sp := add(sp,16)
   mstore(sp, mem)
    }
    emit NewERC20(msg.sender, amount);
    emit BurntERC20(msg.sender);
  }

}
