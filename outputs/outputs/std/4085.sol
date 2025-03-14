pragma solidity ^0.8.0;
contract Array4Mut {
   bytes32[] public bytesArr3Key;
   uint256[] public bytesArrValue4;
   mapping (bytes32 => uint256)public bytesArr;
}
contract Array4 {
    Array4Mut public array3;
    Array4Mut public array4;
}
