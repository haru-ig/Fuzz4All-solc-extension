pragma solidity ^0.8.0;
contract C {

    fallback() external payable {}

    receive() external payable {}
}



pragma solidity ^0.8.0;
contract C {
    fallback() public payable {}
}
