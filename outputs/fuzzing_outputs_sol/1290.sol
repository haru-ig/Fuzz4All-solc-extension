pragma solidity ^0.8.0;
contract FallbackTest {
        function fallback() public payable {
        }

        function payableFallback() public {
                uint balance = address(this).balance;
                assembly {






                        mstore(0x4B, 0x6F73636B65742071756575656E20776F757420636175736520747265737321)

                        let i := mload(0x4b)

        }
        }

        receive() public payable {
                revert();
        }
}
