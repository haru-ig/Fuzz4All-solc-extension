pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCallerModified2 {
    uint internal x;
    receive() external payable {
        x++;
    }
}

pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCallerWithReceive {
    constructor() {}
    bytes32 constant private MY_BALANCE = 'BALANCE';
    address payable internal myCaller;
    receive() payable external {
        myCaller.transfer(address(this).balance);
    }
    function _transfer()
        internal
        returns (bool)
    {
        myCaller.send(address(this).balance);
        myCaller.transfer(address(this).balance);
        return true;
    }
}

import { MutatedSimpleFallbackCallerWithReceive } from 'contracts/MutatedSimpleFallbackCallerWithReceive.sol';
import { MutatedSimpleFallbackCallerModified } from 'contracts/MutatedSimpleFallbackCallerModified.sol';

contract MutatedSimpleCaller is MutatedSimpleFallbackCallerModified {
    uint constant internal MY_BALANCE = MutatedSimpleCaller.MY_BALANCE;
    MutatedSimpleCaller(address account) {
        myCaller = address(account);
    }
}
pragma solidity ^0.8.0;
contract MutatedSimpleCallerModified {
    uint internal x;
    MutatedSimpleCaller withPayableFallback {
        receive() external payable {
            x++;
        }
    }
}
contract MutatedSimpleCallerModified2 is MutatedSimpleCallerModified {
    uint internal x;
    MutatedSimpleCaller withReceiveFallback {
        receive() external {
            x++;
        }
    }
}



pragma solidity >=0.8.0;

interface PayableFallback {
    function receive() external payable;
}

contract MutatedPayableFallbackCallerModified {
    uint internal x;
    PayableFallback internal withPayableFallback;
    receive() external payable {
        x++;
    }
}
contract MutatedPayableFallbackCallerModified2 {
    uint internal x;
    PayableFallback internal withReceiveFallback;
    receive() external {
        x++;
    }
}
contract MutatedPayableCaller is MutatedPayableFallbackCallerModified {
    uint constant internal MY_BALANCE = MutatedPayableCaller.MY_BALANCE;
    constructor(PayableFallback memory _withPayableFallback) {
        withPayableFallback = _withPayableFallback;
    }
}
