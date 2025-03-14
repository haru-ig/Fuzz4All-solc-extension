pragma solidity ^0.8.0;
contract ContractWithFallback {
    fallback() external {
    }
}
contract ContractWithFallback1 {
    fallback() external {
    }
}
contract ContractWithFallback2 {
    fallback() external {
    }
}
contract ContractWithFallback3 {
    fallback() external {
    }
}
contract ContractWithFallback4 {
    fallback() public payable {
    }
}

pragma solidity ^0.8.0;
contract ContractWithFallback {

}
contract ContractWithFallback1 {
    fallback() public payable {
    }
}
contract ContractWithFallback2 {
    fallback() external {
    }
}
contract ContractWithFallback3 {
    fallback() external {
    }
}
contract ContractWithFallback4 {
    fallback() public {
    }
}
