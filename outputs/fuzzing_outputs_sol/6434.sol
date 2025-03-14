pragma solidity ^0.8.0;
contract D is C {
    fallback() external payable {
    }
}

pragma solidity ^0.8.0;
contract E is D {
    receive() external payable {
    }
}
