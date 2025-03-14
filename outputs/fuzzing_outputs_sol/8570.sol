pragma solidity ^0.8.0;
contract CallerExample22 {
    fallback () public payable {}
}
contract CallerExample {
    uint public messageCount = 0;
    fallback () public payable {messageCount++;}
    function example() public {
        messageCount++;
    }
}
contract CallerExample2 {
    fallback () public {
    }
}
