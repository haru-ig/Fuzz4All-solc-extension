pragma solidity ^0.8.0;
contract A {
  function a() public {
    assembly {
      let myaddress := mload(0x40)
      let mybalance := mload(0x40)
      let mycalldata := calldataload(0x40)
      let mycode := mload(0x20)
      let mydata := mload(0x20)



      returndatacopy(msgdata(), 0, calldataload(0), calldataload(0x20))


      mstore(mybalance, x + 1)

      mstore(x + 1, x + 2)



      if setreturndatacopy(1) {
        mstore(mydata, x + 3)
      }



      if iszero(add(add(y, z), x)) {


        calldatacopy(0, 0, mycalldata, mycalldata)

        mstore(0x20, x + 7)

        mstore(0x3a, x + 8)

        mstore(0x48, x + 9)
      }

      let returndata := returndatacopy(x + 1, calldataload(x + 2), 0, 0x20)

      swap(0x20, (0x30, 0, 0, 9), 0x20, 0)


      swap(0x28, (0x50, x + 0x28, x + 0x10, x + 0x18), 0x50, 0xe0)
