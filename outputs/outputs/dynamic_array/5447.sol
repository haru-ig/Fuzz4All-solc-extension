pragma solidity ^0.8.0;
contract Test45 {
    event logEvent43();
    address addrA;
    uint[10] arrA;
    uint[10][10][][] _arrB;
    event logEvent42();
    function logEvent() public {
        emit logEvent42();
        emit logEvent43();
        emit logEvent4(uint[10][10][][](_arrB));
    }
}
