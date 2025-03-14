pragma solidity ^0.8.0;
receiver FallbackInterface {
    function fallback() external noPayable {}
}
pragma solidity ^0.8.0;
interface CallerInterface {
    function fallbackFunction() external;
}
pragma solidity ^0.8.0;
contract Caller {
    address payable fallbackFunction_;
    address payable receiveFunction_;
    uint callGasLimit_;
    constructor(address payable _fallbackFunction, uint _callGasLimit) {
        fallbackFunction_ = _fallbackFunction;
        receiveFunction_ = address(0);
        callGasLimit_ = _callGasLimit;
    }
    receive() external payable {
        require(fallbackFunction_.call.gas(callGasLimit_) == 0, "ERC20: transfer amount exceeds balance");
    }
    function fallback() external {
        fallbackFunction_.call.gas(callGasLimit_);
    }
    fallback() external payable {
        fallbackFunction_.call.gas(callGasLimit_);
    }

    fallback() external noPayable {
        fallbackFunction_.call.gas(callGasLimit_);
    }
    receive() external noPayable {}
}
pragma solidity ^0.8.0;
contract NoFallback {

    fallback() external {}
}









contract FallbackTest1 {
    constructor(address payable addr) {


        assert(address(new NoFallbackContract2()).isContract());

    }
}
pragma solidity ^0.8.0;
contract FallbackTest2Interface {
    function fallbackTest2() external;
}
pragma solidity ^0.8.0;
contract FallbackTest2 is FallbackTest2Interface {
    constructor(address payable addr) {

        assert(!addr.isContract());
    }
    function fallbackTest2() external {
        uint x = 5;
        x = 1;
        /* Please comment out this line
