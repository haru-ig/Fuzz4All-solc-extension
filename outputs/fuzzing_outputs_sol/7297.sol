pragma solidity ^0.8.0;
contract Caller {
    function foo() internal pure returns (uint8) {return 0;}
}
contract MuteRecipient {
    modifier canReturn() {
        if (msg.data.length > 10) { throw; }
        _;
    }

    receive() external payable {require(tx.origin == 0x0);}
    receive() internal pure {require(tx.origin == 0x0);}
    receive() contract IContract {require(IContract(msg.sender).foo() == 0);}
}
contract FallbackContract is MuteRecipient {
    fallback() external payable {
    }
}
