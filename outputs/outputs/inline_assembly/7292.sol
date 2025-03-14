pragma solidity ^0.8.0;
contract MutatedSolidity {

  address public myContractAddress = 0x14e76d3b6A9B28731700B7C19e9CCf887A58d86F;

  function increaseConst(uint _c) internal returns (bool success){
    i = c + (_c);
    return true;
}

function increaseV(uint _v) internal returns (bool success){
  i = myConst + 20;
  return true;
}

}
