pragma solidity ^0.8.0;
contract Caller extends ModifierEquivalenceMutated {
        fallback() external payable {
                uint s = address(this).balance;
                uint r = address(this).call.value(s)("");
                uint v = this.fallback(address(this), 1234);
                if (s!= address(this).balance) {
                        uint w = address(this).balance;
                }
        }
}
