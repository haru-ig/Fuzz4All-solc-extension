pragma solidity ^0.8.0;
interface CallBackWithPureSuccess {
    function success ( uint _value ) public pure returns (bytes memory);
}

contract CallBackWithPureFailure {
    function failure () public pure returns (bytes memory);
}
