pragma solidity ^0.8.0;
contract FallbackCall {
        fallback() payable external {}
}
contract F1Contract {
    fallback() external payable {}
    fallback() external payable {}
}
contract F2Contract {
    fallback() payable external {}
    fallback() payable external {}
}
contract F3Contract {
    fallback() external payable {}
    fallback() public {}
}
