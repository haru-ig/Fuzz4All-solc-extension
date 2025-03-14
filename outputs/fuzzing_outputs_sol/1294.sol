pragma solidity ^0.8.0;
contract CallTest {
        contract Test {
                function test() external {
                        FallbackTest testcontract = new FallbackTest();

                        address oldAddress = address(testcontract);
                        assembly {
                                let s := mload(0x40)
                                mstore(s, originalAddress)
                        }
                        (bool success, ) = oldAddress.call{value: ethers.amountOf("0.1 ether")}("");
                        require(success, "Call failed");
                }
        }
}
