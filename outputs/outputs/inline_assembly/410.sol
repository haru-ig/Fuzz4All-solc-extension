pragma solidity ^0.8.0;
contract M12 {
    function doSomethingUsingASM() public pure {
        assembly {

            calldatacopy(1, 0, 4)
            4(0x60, 0xa0, 0x3b, 0x20, 0x0, 0x0, 0x0)


            returndatacopy(1, 0, 1)
            8(0x60, 0xa0, 0x3b, 0x20, 0x0, 0x0, 0x0)
        }
    }
}
