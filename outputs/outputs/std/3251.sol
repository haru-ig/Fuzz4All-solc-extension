pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutate{
  function mutate(uint8[33] memory test){
    test[30] = 17;
  }
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutate{
  function mutate(uint8[33] calldata test){
    test[30] = 17;
  }
}
