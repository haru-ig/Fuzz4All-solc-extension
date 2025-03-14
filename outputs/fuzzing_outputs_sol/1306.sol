pragma solidity ^0.8.0;
contract Contract {
        fallback() external payable {
        }
        receive() external {
        }
}
contract FallbackContractFactory {
        function createContract() public pure returns (address) {
                return address(new Caller());
        }
}
