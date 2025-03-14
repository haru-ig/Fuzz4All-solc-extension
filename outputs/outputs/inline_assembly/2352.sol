pragma solidity ^0.8.0;
library Mutators
{
    Mutator instance = new Mutator();
    address address0 = address(instance);
    address address1 = address(instance);
    address address2 = address(instance);
    uint256 immutable value0 = instance.A;
    uint256 immutable value1 = instance.B;
    uint256 immutable value2 = instance.B;

    function revertToOriginalAddress() public nonReentrant{
        require(msg.sender == address0, "only allowed to be called by address0");
        assembly {

            let _ = return(address0, 0x04, mload(0x40), 0x0)
        }
    }
    function revertToOriginalAddress1() public nonReentrant{
        require(msg.sender == address1, "only allowed to be called by address1");
        assembly {
            let _ = return(address1, 0x04, mload(0x40), 0x0)
        }
    }
    function revertToOriginalAddress2() public nonReentrant{
        require(msg.sender == address2, "only allowed to be called by address2");
        assembly {
            let _ = return(address2, 0x04, mload(0x40), 0x0)
        }
    }


}
