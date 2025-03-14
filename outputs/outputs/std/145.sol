pragma solidity ^0.8.0;
contract CowContract is MintingProgram {
    uint[] public x;
    uint[10] private y;
    constructor() {}

    function mint_if_bigger(uint value, uint total, uint min) public view virtual returns (uint) {
      if (value >=  min) {
        return super.mint_if_bigger(value, total, min);
      }
      else {
        emit LogMint(mint_if_bigger(value, total, min));
        return 0;
      }
    }

    receive() external pure {}

    function LogMint(uint i) public pure { emit LogMint(i); }
}
