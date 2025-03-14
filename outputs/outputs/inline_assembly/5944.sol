pragma solidity ^0.8.0;



contract InlineAssemblyExample {


 function calc(uint x) internal pure returns (uint256 y) {
    assembly {
        y := 42
        mstore(x, mul(y, 8))
    }
 }


 function setX(uint x) internal {
    x = 42;
 }



 function setY(uint y) internal {
    assembly {
        mstore(5, y)
    }
 }



 function getY(uint x) internal view returns (uint256) {
    uint a;
    assembly {
       a := mload(x)
    }
    return a;
 }



 function add(uint x, uint y) internal pure returns (uint) {
    assembly {
      x := add(y, x)
    }
    return x;
 }


 function sub(uint z, uint256 y) internal pure returns (uint256) {
    assembly {
      x := sub(z, y)
    }
    return x;
 }



 function mul(uint256 x, uint256 y) internal pure returns (uint256) {
    assembly {
      return mul(x, y)
    }
 }



 function div(uint256 x, uint256 y) internal pure returns (uint256) {
    assembly {
      return div(x, y)
    }
 }



 function sub(uint256 x, uint256 y) internal pure returns (uint256) {
    assembly {
      x := sub(x, y)
    }
    return x;
 }



 function call(address receiver, bytes memory data) internal {
    assembly {
      let result := calldatacopy(0, 0, add(calldataload(0), 32), 0)
      let returnData := mload(4)
      revert(add(returnData, 32), returnData)
    }
 }


 function getX() public view returns (uint256) {
    assembly {
      return mload(0)
    }
 }


 function test(uint x) public pure {
    uint256 z;
    assembly {
      z := add(42, x)
      mstore(5, z
