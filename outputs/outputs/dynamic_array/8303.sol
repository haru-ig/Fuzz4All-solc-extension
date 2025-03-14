pragma solidity ^0.8.0;
contract Solidity1To7 {
    uint public a;
    uint public maxA;
    uint public prevA;
    bytes32 public data;
    bool use17;
    constructor() public {
        a = 1;
        a = 1;
        maxA = 2;
        use17 = true;
        data = '123456';
    }
    modifier only17() { require(use17, ""); _; }
    function safe() public view {

        require(maxA >= 3, "This number is not valid.");
        maxA = 4;

        if (a >= 3) {
        a += 10;
        } else {
            a -= 4;
        }
        a *= 100000;
        emit LogUpdate(prevA, a);
        prevA = a;
        emit LogUpdate(prevA, a);
        prevA = a;
        emit LogUpdate(a, a);

    }
    function LogUpdate(uint prevA, uint a) pure notImplemented {
        address sender = _msgSender();
        emit UpdateLog(prevA, a, sender);
    }
    event LogUpdate(uint prevA, uint a, address _sender);
