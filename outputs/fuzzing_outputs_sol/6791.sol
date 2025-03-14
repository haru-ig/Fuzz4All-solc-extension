pragma solidity ^0.8.0;
contract Memento {
    function Fallback() public payable {
        revert();
    }
    function call() external payable {

        uint x;
        assembly {
            x := mstore(0x40)
        }
    }
}
contract FallbackFailure {
    function Fallback() public payable {
        uint m = 12;
        mstore(0x40)
    }
    function test() external payable {
        FallbackFailure();
        Memento();
        Memento();
        Memento();
    }
}
