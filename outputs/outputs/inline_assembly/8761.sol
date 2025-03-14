pragma solidity ^0.8.0;
contract Test {
    function value() public view {
        assembly{

            sstore(0x2000, 3)
            sstore(0x2004, 3)







            if(!(sload(0x2000) == 3)) {
                revert(0x5)
            }
            if(!(sload(0x2004) == 3)) {
                revert(0x5)
            }
        }
    }
}
