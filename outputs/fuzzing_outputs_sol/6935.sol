pragma solidity ^0.8.0;
interface MyInterface2 {
    function myCall(address x) external returns (uint256 v);
}
contract MyInterface2Mutator {
    MyInterface2 internal immutable myInterface2_;
    constructor() {
        myInterface2_ = MyInterface2(msg.sender);
    }
    receive() external payable {
        myInterface2_.myCall(address(this));
    }
}

pragma solidity ^0.8.0;
import "./MyInterface2Mutator.sol";
contract MutatedContractMutator {
    Mutator private mutator_;

    constructor() {
        mutator_ = Mutator(msg.sender);
        mutator_.mutate();
    }

    receive() external payable {
        mutator_.createCall(address(this));
    }
}
ContractMutator.sol:1:15: Context is not a contract and cannot be created.
"use strict";

abstract contract Context {
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this;
        return msg.data;
    }
}
bytes:51173161103656889
[224, 0, 64, 144, 225, 13
