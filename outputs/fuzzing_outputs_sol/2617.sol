pragma solidity ^0.8.0;
contract myContract {
    function fallback() payable {
        require(address(msg.sender) == msg.sender);
    }
}
contract Caller is myContract {
    constructor() payable {
        fallback();

    }
}


pragma solidity ^0.8.0;
contract Caller {
    event EmergencyMessage(address emergencyAddress);

    function emergency() public {
        address emergencyAddress;
        EmergencyMessage(emergencyAddress);
    }
}
pragma solidity ^0.8.0;
contract callerContract {
    uint public x;
    event Log1(uint x);
    event Log2(uint val);

    constructor() {
        x = 0;
        emit Log1(x);
        emit Log2(x);
    }
    fallback () {
        x += 1;
        emit Log2(x);
    }
}

pragma solidity ^0.8.0;
contract EventLogger {
    fallback () external  {}

    event Log1(uint x);
    event Log2(uint val);
}
contract events {
    function execute(uint x, uint y) public pure {

        assembly { log(add(y, 32), mul(x, 32)) }
    }
}
