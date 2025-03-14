pragma solidity ^0.8.0;
contract Example {
    function setFallback(address payable _receiver) public {
        receiver = _receiver;
    }
}
pragma solidity ^0.8.4;
contract Example2 {
    address payable receiver;
    constructor(address payable _receiver) {
        receiver = _receiver;
    }
    function transfer(uint256 amount) public {
        receiver.transfer(amount);
    }
}

pragma solidity <= 0.7.0;
contract Fallback {
    int256 a;
    constructor(int256 _a) {
        a = _a;
    }
    function call() external {
        require((uint(a) / 2).add(1) % 2 == 0);
    }
}
