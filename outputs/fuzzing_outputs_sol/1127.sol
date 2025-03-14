pragma solidity ^0.8.0;
contract ComplexMutation14_OldReceiver {
    function caller(uint8 arg) public pure returns (uint) {
        uint result = arg + 13;
        return result;
    }
    receive() external payable {}
}
    contract ComplexMutation14_OldSenderExample {
    function main() public {
        ComplexMutation14_OldReceiver receiver;
        receiver.caller(13);
    }
}
contract ComplexMutation18_Receiver {
    function caller(uint8 arg) public pure returns (uint) {
        bool isReceivable;
        uint result = arg + 13;
        return result;
    }
    fallback() external {
        isReceivable = true;
    }
}
    contract ComplexMutation18_SenderExample {
    function main() public {
        ComplexMutation18_Receiver receiver;
        receiver.caller(13);
    }
}
contract ComplexMutation19_Receiver {
    function caller(uint8 arg) public pure returns (uint) {
        bool isReceivable;
        uint result = arg + 13;
        return result;
    }
    receive() external payable {
        isReceivable = true;
    }
}
    contract ComplexMutation19_FallbackExample {
    function main() public {
        ComplexMutation19_Receiver receiver;
        receiver.caller(13);
    }
}
contract ComplexMutation20_Receiver {
    function caller(uint8 argOne) public pure returns (uint) {
        bool isReceivable;
        uint resultOne = argOne + 13;
        uint resultTwo = (resultOne + 49) * 2;
        uint resultThree = 13 / 0;
        bool isReceivableTwo = true;
        uint resultFour = 13 / 0;
        bool isReceivableThree = true;
        resultOne = 13 / 0;
        uint resultFive = 0 / (resultOne & 13);
        uint resultSix = resultOne & (resultOne + 13);
        uint resultSeven = (13 - 13 * 2) / resultOne;
        bool isReceivableFour = true;
        isReceivable = true;
        resultOne = 13 / 0;
        uint resultEight = (resultOne - 13) * (resultThree - 1);
        resultTwo = 13 / 0;
        resultThree = 13 / 0;
        isReceivableTwo = true;
        resultOne = 13 / 0;
        bool isReceivableFive = true;
        uint resultNine = ((13 * 13) / resultOne
