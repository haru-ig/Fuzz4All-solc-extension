pragma solidity ^0.8.0;
interface ConvertInterfaceContract {
  function convertStringToUint(string memory source)
    external
    pure
    returns(uint);
}
