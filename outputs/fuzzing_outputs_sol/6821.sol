pragma solidity ^0.8.0;
contract Caller {
    contract I {
        receive() payable external;
    }

    function callNonFallback() external payable {
        I(address(0)).test.value((address(this).balance))();
    }
}
