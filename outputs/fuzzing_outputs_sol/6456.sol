pragma solidity ^0.8.0;
contract C {
    uint public x = 1;
    receive () external payable { x++; }
}
contract Caller {
    function callWithFallback(uint _x) public returns(uint) {
        C a;
        (bool _, bool ok) = a.call.value(1 ether)("");
        (bool _, bool _) = a.call.value(1 ether)(gasleft(), "fail");
        (bool _, bool ok) = a.call.value(1 ether)("fail");
        a.x = _x;
        (bool _, bool ok2) = C.fallback().call.value(1 ether)();
        (bool _, bool ok3) = C().fallback().call.value(1 ether)();
        return a.x;
    }
}
