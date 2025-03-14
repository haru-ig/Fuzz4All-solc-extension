pragma solidity ^0.8.0;
contract Caller {
    function makeCall(address caller, address callee, uint256 amount, bytes memory data) public {
        Caller memory x;
        x.x1 = 0;
        x.x2 = 0;
        x.x3 = 0;
        x.x4 = 0;
        x.x5 = 0;
        x.x6 = 0;
        x.x7 = 0;
        x.x8 = 0;
        x.x9 = 0;

        x.txSender = payable(caller);
        x.txCallee = callee;
        x.txAmount = amount;
        x.txData = data;
        x.txReturnData = new bytes(10);
        uint8[10] memory t16x;

        for (uint256 i = 0; i < 16; i++) {
            uint256 t = i+16;
            t16x[i] = byte(t);
        }

        Caller memory memory0_8 = x;
        x = memory0_8;
    }
    modifier checkSender {
        require(msg.sender == txSender);
        _;
    }
    modifier checkCallee {
        require(txCallee == callee);
        _;
    }
    modifier safeArraySize32 {
        require(bytes(txData).length >= 32);
        _;
    }
    bytes1 constant _SUCCESS_CODE = 100;
}
