pragma solidity ^0.8.0;
contract Test38 {
    event logEvent2(uint[10] arr2);
    uint[10] _arrA;
    uint[] _arrB;
    uint[3] _arrC;
    uint[11] _arrD;
    uint[12] _arrE;
    uint[5] _arrF;
    uint[3] _arrG;
    uint[6] _arrH;
    uint[2] _arrI;
    uint[3] _arrJ;
    function logEvent() public {
        emit logEvent2(_arrC);
        emit logEvent2(_arrD);
        emit logEvent2(_arrE);
        emit logEvent2(_arrF);
        emit logEvent2(_arrG);
        emit logEvent2(_arrH);
        emit logEvent2(_arrI);
        emit logEvent2(_arrJ);
    }
}
pragma solidity ^0.8.14;
contract Test39 {
    event logEvent(uint a);
    uint _a;
    function logEvent2() public {
        emit logEvent(_a);
    }
    function logEvent3() public {
        emit logEvent(_a);
    }
}
