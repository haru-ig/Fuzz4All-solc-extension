pragma solidity ^0.8.0;

contract Mutate {
  function h() view internal returns (int) {
    int _h = constant;
    _h = constant;
    return uint(uint(_h));
  }
  int constant constantValue = 125;
}






contract EtherToken is ERC20Mint {

  function mint(address to, uint256 amount) external onlyOwnerMints(to, amount) {
    mintInternal(to, amount);
    emit Mint(to, amount);
  }


  function transfer(address from, address to, uint256 value) public virtual returns (bool) {
    require(balanceOf(from) >= value, "EtherToken::transfer insufficient balance");
    bool success = approve(from, value);
    if (success) {
      transferInternal(from, to, value);
    }
    return success;
  }

  /**
   * @notice Transfers tokens from one acccount to another account
   * @param from The account that should send tokens
   * @param to The account that should receive tokens
   * @param value The amount of tokens
