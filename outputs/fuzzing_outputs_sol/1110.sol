pragma solidity ^0.8.0;
contract ComplexMutation10_Old2 {
    function caller2() public pure returns (bytes memory, bool) {
        return ("fallback1".bytes(), false);
    }
}
contract Caller {
    function call() public payable {
        uint _amt = 100000;
        (bool success, bytes memory _data) = msg.sender.call{value:_amt}("");
        (bool success, bytes memory _data2) = ComplexMutation10_Old2.fallback2(msg.value);
    }
}
contract ComplexMutation10_New {
    error UndefinedFallbackFunction();
    function caller(bool success) public pure {
        if (success) throw "fallback1"; else
            throw UndefinedFallbackFunction();
    }
    function caller2() public pure returns (bytes memory, bool) {
        (bytes memory _a, bool _b) = ComplexMutation10_Old2.callFallback2();
        return (_a, false);
    }
}
