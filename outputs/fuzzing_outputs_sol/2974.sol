pragma solidity ^0.8.0;


contract EtherFallbackReceivable is FallbackReceivable {
    function receive() external payable {}

    function fallback() external payable {}
}

pragma solidity ^0.8.0;
contract FallbackReceivableAndReceiveEther {
    function fallback() external payable {}

    function receive() external payable {
        emit EtherReceived();
    }

    event EtherReceived();
}

pragma solidity ^0.8.0;

contract FallbackReceivableAndReceiveEther2 is FallbackReceivable, FallbackReceivableAndReceiveEther, EtherFallbackReceivable {
    function fallback() external payable {
        fallbackReceivable();
        receiveEther();
    }
}
contract FallbackReceivableAndReceiveEther3 {
    function fallback() external payable {}

    function receive() external payable {
        fallbackReceivable();
        receiveEther();
    }

    function fallbackReceivable() external {
    }

    function receiveEther() public {
    }
}
contract FallbackReceivableAndReceiveEther4 {
    event EtherReceived();

    function fallback() external payable {
        fallbackReceivable();
        receiveEther();
    }

    function receive() external payable {}

    function fallbackReceivable() external {
    }

    function receiveEther() public {}
}

pragma solidity ^0.8.0;
contract C {
    function receive() public payable {}

    function receiveEther() public {}

    event EtherReceived();
}
