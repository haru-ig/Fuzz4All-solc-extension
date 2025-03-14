pragma solidity ^0.8.0;
import "./Mutation.sol";
import "./Array.sol";
import "../utils/Convert.sol";
import "../utils/Math.sol";
contract Mutated
{
 function testUint() public  {
    bytes memory toAddBytes="10";
    bytes memory toAddTwoBytes="01";

    uint8[] memory addTwoBytes= Convert.fromBytesToUint8Array(toAddTwoBytes);
    Array.removeFromArray(addTwoBytes, 1);
    addTwoBytes.push(toAddBytes);
    uint[] memory add10Bytes= Convert.fromBytesToUintArray(toAddBytes);

    uint8[] memory removeUint8FromArray1= ARRAY.removeFromArray(add10Bytes,1);

    uint8[] memory removeUint8FromArray= ARRAY.removeFromArray(add10Bytes, 1);

    uint8[] memory removeUint8FromArray2= ARRAY.removeFromArray(add10Bytes, 5);

 }
}
