pragma solidity ^0.8.0;
interface Caller {
}
contract Example8 {
    uint8 constant public FALLBACK_CODE = 0x7f;

    fallback() external payable {
        if (block.number > 1) { throw ; }
        assembly {




            return(0, returndatasize(), calldataload())
        }
    }
}
