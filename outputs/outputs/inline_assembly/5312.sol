pragma solidity ^0.8.0;

contract Q {
    uint8 x = 1;

    function f() internal {
        bytes memory encodedMessage = abi.encodeWithSelector(0x0);
        assembly {

            mstore(add(x, 0), add(encodedMessage, 0x14))


            mstore8(add(x, 0), 104)

            return(mload(add(x, 1)))
        }
    }
}
