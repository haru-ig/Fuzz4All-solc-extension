pragma solidity ^0.8.0;
contract Solidity6To1 {
    uint public a;
    uint public b;
}
uint8 _byte = -1;
uint16 _half = -1;
uint32 _two = -1;
uint64 _four = -1;
uint128 _eight = -1;
function contractHasBug() public pure returns (bool) {
    Solidity1To6 _contract = new Solidity1To6();
    _contract.myFunction();
    return _contract.isBuggy();
}
contract Solidity1To6 {
    uint public maxA;
    uint public maxB;
    uint public prevA;
    uint public prevB;
    function myFunction() public {
        prevA = maxA;
        prevB = maxB;
        maxA = maxA + maxA;
        maxB = maxB + maxB;
    }
    function contractHasBug() public pure returns (bool) {
        Solidity6To1 _contract = new Solidity6To1();
        _contract.myFunction();
        return _contract.isBuggy();
    }
    function isBuggy() pure public returns (bool) {
        return true;
    }
}
