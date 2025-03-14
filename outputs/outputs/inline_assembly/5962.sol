pragma solidity ^0.8.0;


contract InlineAssemblyBadExample {
    function callNonStandardFunction() public pure {
        uint value = 8;
        assembly {
            calldatacopy(0x40, 0, 8)
            let result := call(gas(), 0x40, 0, 8, value, {
                gasprice: 0x1,
                callvalue: 0
            })
            returndatacopy(0, 0x40, 8)
        }
    }
}
