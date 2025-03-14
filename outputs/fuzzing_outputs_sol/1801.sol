pragma solidity ^0.8.0;
contract Caller {
function callBack() public payable {
    emit CallerFallback();
}
    function callBack2() public {
        receive();
    }
    function payable_fallback() public {
        callBack2();
    }
    fallback receive() {
        callBack();
    }
}
