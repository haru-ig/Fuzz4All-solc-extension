pragma solidity ^0.8.0;
contract Caller {
    function call(address _addr) public {
        assembly {
            let size := extcodesize(_addr)



            if div(size, 2) is calldata


            {
                sstore(0x40, zero)
                sstore(0x44, size)
                sstore(0x48, add(_addr, 0x50))
                sstore(0x4c, add(_addr, 0x58))
                if iszero(returndatasize()) {
                    sstore(0x50, callvalue())
                    sstore(0x54, 0x0)
                } else {
                    sstore(0x50, returndata(0x40, size))
                }
                sstore(0x54, returndatasize())
            }
        }





        unchecked {
            assembly {
                revert(0, 0)
            }
        }
    }
}
