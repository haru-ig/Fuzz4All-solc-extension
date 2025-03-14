pragma solidity ^0.8.0;
modifier m() {
    bool isM;
    assembly { isM := m() }

    isM = true;
    _;
}
contract mReceiver {
    modifier m() {
        require(m_);
        m_ = false;
        _;
    }
    bool m_;
}
contract mutatedCaller {
    receive() external payable { }
    function receive() public payable { }
    modifier m() {
        bool isM;
        assembly { isM := m() }
        m_ = isM;
        _;
    }
    bool m_;
}
contract mFallbackReceiver {
    modifier m() {
        m_ = true;
        _;
    }
    bool m_;
}
contract mutatedCaller2 {
    receive() external payable { }
    function receive() public payable { }
    modifier m() {
        bool isM;
        assembly { isM := m() }
        isM = true;
        _;
    }
    bool m_;
}
contract mFallbackReceiver2 {
    modifier m() {
        m_ = false;
        _;
    }
    bool m_;
}
contract Caller {

    function receive() public payable { }

    function caller1() virtual public {

        m_{fallbackReceive}();
        m_{fallbackReceiveByPointer}();
        m_{fallbackReceiveByPointerAndPrefix}();
        m_{fallbackReceiveByPointerAndInfix}();


        m_{noFallbackReceive}();
        m_{noFallbackReceiveByPointer}();
        m_{noFallbackReceiveByPointerAndPrefix}();
        m_{noFallbackReceiveByPointerAndInfix}();
    }

    function caller2WithoutFallback() virtual public {
        m_{fallbackNoReceiveByPointer}();
        m_{fallbackNoReceiveByPointerAndPrefix}();
        m_{fallbackNoReceiveByPointerAndInfix}();
    }

    function caller2WithFallback() virtual public {

        m_{fallbackEtherReceive()}();
        m_{fallbackEtherReceive1()}();
        m_{fallbackEtherReceive2()}();

        m_{fallbackEtherReceiveAndByPointer()}();
        m_{fallbackEtherReceiveAndByPointerAndPrefix}();
        m_{fallbackEtherReceiveAndByPointerAndInfix}();


        m_{noFallbackEtherReceive()}();

        m_{noFallbackEtherReceive1()}();
        m_{noFallback
