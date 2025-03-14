pragma solidity ^0.8.0;
contract MutatedCall {
    function mutatedFallback(uint payable x) external;
}
contract MutatedMessageHandler {
    receive() external payable {}
}
 contract MutatedMessageHandler2 {
    receive() external payable {}
}
contract MutatedHandler {
    receive() external payable {}
}
contract MutatedHandler2 {
    receive() external payable {}
}
contract MutatedHandler3 {
    receive() external payable {}
}
contract MutatedHandler4 {
    receive() external payable {}
}
