pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCallerModifiedModified {
    uint internal x = 10;
    receive() external payable {
        x = 30;
    }
}
uint256 constant myUint256 = 1000;
uint constant myUint32 = 1000;
contract MutatedSimpleFallbackCaller {
    uint internal x = 10;
    receive() external payable {
        x++;
    }
}
uint32 constant myUint32Constant = 20;
contract MutatedSimpleFallbackCallerModifiedConstant {
    uint internal x = 10;
    receive() external payable {
        x = 30;
    }
}
contract MutatedSimpleFallbackCallerModifiedConstant2 {
    uint internal x = 10;
    receive() external payable {
        x = 30;
    }
}
contract MutatedSimpleFallbackCallerConstant {
    uint internal x = 10;
    receive() external payable {
        x++;
    }
}
uint64 constant myUint8 = 1000;
contract MutatedSimpleFallbackCallerModifiedConstantUnsigned {
    uint internal x = 10;
    receive() external payable {
        x = 30;
    }
}
contract MutatedSimpleFallbackCallerModifiedConstantUnsigned2 {
    uint internal x = 10;
    receive() external payable {
        x = 30;
    }
}
uint128 constant myUint128 = 20000;
uint internal myUint16 = 10000;
contract MutatedSimpleFallbackCallerModifiedConstantUnsigned128 {
    uint internal x = 10;
    receive() external payable {
        x = 30;
    }
}
contract MutatedSimpleFallbackCallerConstantUnsigned {
    uint internal x = 10;
    receive() external payable {
        x++;
    }
}
contract InvalidMutationsCaller {
    uint internal x = 10;
    receive() external payable {
        x++;
    }
}
contract StaticUintAccessMutationsCaller {
    uint internal x = 10;
    uint constant y = 5;
    receive() external payable {

        z;
    }
    uint constant z = 14;
}
