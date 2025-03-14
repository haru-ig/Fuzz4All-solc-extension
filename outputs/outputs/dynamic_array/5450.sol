pragma solidity ^0.8.0;
contract Test41 {
    event eventA(bytes4 eventA);

    function eventB() public {
        bytes4 a;
        (a) = eventA.sig;
        emit eventA(a);
    }
}
