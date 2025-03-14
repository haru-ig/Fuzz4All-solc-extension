pragma solidity ^0.8.0;
contract Contract {
        fallback() external payable {
        }
        receive() external payable payable {}
        receive() public payable {
        }
}

pragma solidity ^0.8.0;
contract Contract {
        fallback() external payable {
        }
        receive() public payable {
        }
}
