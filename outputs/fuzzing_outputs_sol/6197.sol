pragma solidity ^0.8.0;
contract MutantFallbackCaller {
    uint x;
    uint32 public y;
    mapping (uint256 => uint32) z;
    event Call();
    event Transmit(uint);
    function transfer() public payable {
        if (y > 0) {
            y -= 1;

        } else {
            x -= 2;
        }
    }
    function internalCall() internal payable {

    }
    receive() public payable {
        z.length;
    }
    function call() public payable returns (bool) {
        return false;
    }
    function revert() public payable {
        revert (uint(z[this])) + 99;
    }



    function emitAndRevert() public {
        emit Call();
        revert();
    }
    function emitAndTransfer(uint i) public {
        emit Call();
        transfer();
		if (i == 0) {
            x = -1;
        } else if (i == 1) {
            x = -2;
        }
    }
    function emitAndRevertAndTransfer(uint i) public {
        emit Call();
        revert();
        transfer();
    }
    function onlyInternalCall() internal returns(bool) {
        return internalCall();
    }
    function onlyRevert() public returns(uint) {
        return revert();
    }
    function onlyTransfer() public returns(uint) {
        return transfer();
    }
    function onlyNormalCall() public returns (bool) {
        return normalCall();
    }
    function onlyNormalTransfer() internal returns (bool) {
        return normalTransfer();
    }
    function onlyRevertAndTransfer() public returns(bool) {
        uint256 v = revertAndTransfer();
        if (v == 1) {
            x = -2;
            revert();
        } else {
            y = -1;
            return false;
        }
    }
    function onlyRevertAndTransferAndCall(uint i) public returns (bool) {
        uint256 v = revertAndTransfer();
        if (v == 1) {
            x = -2;
            return false;
        } else {
            y = -1;
            return false;
        }
    }
    function internalFallback() internal {
        externalFallback();
    }
    receive() internal fallback();
    function externalFallback() external {}

    function revertAndTransfer() public returns(uint) {
        revert();
        return 8;
    }
}
