pragma solidity ^0.8.0;
contract E7A
{
    bytes32 public x;
    bytes32 constant y = keccak256(abi.encodePacked(0x73687901));

    function g(bytes32 x) public returns (int)
      {
        assembly {




          mstore(0, x)






          let xloc := mload(0)
          let _ylo := mload(32)
          switch xloc
          case 0 {

            return(x)
          }
          default
          case 32 { return(_ylo) }
        }
      }

    function put(bytes32 x_) public
    {
        x = x_;
    }
}
