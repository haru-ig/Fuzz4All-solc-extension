pragma solidity ^0.8.0;
contract G {
    uint256[3] x = [ 1, 2, 3 ];
    constructor(uint256[] memory input) public {
         bytes memory tmp;
        assembly {
            tmp := mload(add(input,.sub(add(2,0))))
            mstore(add(x,.sub(add(add(2,0),0x20))),0)
            memcpy(add(x,.add(0x20)),tmp,0xffffffff)
        }
    }
    uint256[3] prev = x;

}
