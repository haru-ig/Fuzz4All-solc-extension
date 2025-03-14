pragma solidity ^0.8.0;
contract MutatedCaller {
    function mutated_pay_fallback() public payable {
        emit MutatedCallerFallback();
    }
    fallback() payable nonpayable external {
        emit MutatedCallerFallback();
    }
    event MutatedCallerFallback();
}

pragma solidity ^0.8.0;
contract MutatedCaller {
    function mutated_pay_fallback() public {
        require(msg.data.length < 2048, "Error: data too long");
        revert();
    }
    fallback() external {
        emit MutatedCallerFallback();
    }
    event MutatedCallerFallback();
}
