pragma solidity ^0.8.0;
contract FallbackX {
    receive() external payable {}
}
contract CallerX {
    function call() public payable {

        Upgrader2x(_).migrate(_);
    }
}
pragma solidity ^0.8.0;
contract FallbackX {
    receivePayable() external payable {}
}
contract CallerX {
    function call() public payable {

        Upgrader2x(_).migrate(_);
    }
}
