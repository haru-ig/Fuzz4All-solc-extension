pragma solidity ^0.8.0;
contract Mutant2 {
    function normalCall() public pure {
        Mutant2Fallback caller;
        assembly {













            let x := 1000
            returndatacopy(0x0, 0x0, x)
            switch x
                case 0 {


                    return(datacopy(0x0, 0x0, mload(0xb5d3b065)))
                }
                0 {


                    return 1
                }
                1 {

                    let addr := add(address(0xb5d3b065), mload(0xb5d3b065))
                    returndatacopy(0x0, 0x0, x)
                    switch x
                        case 0 {


                            returndatacopy(0x0, 0x0, mload(addr))
                        }
                        0 {


                            return 2
                        }
                        2 {
                            let addr2 := add(address(0x1), mload(addr))
                            switch x
                                case 0 {


                                    returndatacopy(0x0, 0x0, mload(addr2))
                                }
                                0 {


                                    return 3
                                }
                                2 {
                                    revert(0xaf467e70)
                                }
                            switch x
                                case 0 {
                                    revert()
                                }
                                function() external {
                                        selfdestruct(0xaf467e70)
                                }
                                address addr {
                                            returndatacopy(
