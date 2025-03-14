pragma solidity ^0.8.0;

contract MultiContract
{
        bytes4[] memory functionSigs = [
            bytes4(keccak256(abi.encodeUsingAddress(address, this, uint64(1)))))
        ];
        bytes4 func(uint64 x) public returns (bytes4) {
        bytes4 f = functionSigs[x];

        assembly {
            switch f
            {
                case 0x3b59cbb6: mstore(335, 0x3b59cbb6)
                        return(0x3b59cbb6)
                        break
                default: break
            }
        }
        }
        function() external payable {}
}
