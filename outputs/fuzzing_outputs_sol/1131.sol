pragma solidity ^0.8.0;
contract Caller {
    function callExample() public {
        address addr = 0xeec7a27784DDE9b6f5a02996282c170d5948269b;
        SimpleMutation.simpleMutation.value(5 ether)(addr);
    }
}
