pragma solidity ^0.8.0;
contract WithFallback {
    receive() external payable {
        return;
    }
    fallback() external payable {}
}
contract WithFallbackAndOneReceiver {
    function () public payable {}
    fallback() external payable {}
}
contract WithFallbackAndOneReceiverThatThrows {
    function () public payable {}
    receive() external payable {}
}
contract FallbackContract {
    fallback() public payable {}
}
contract WithReceiver {
    receive() public payable {}
}
contract WithFallbackReceiver {
    receive() external payable {}
    fallback() external payable {}
}
contract WithFallbackReceiverThatThrows {
    receive() external payable {
        return;
    }
    fallback() external payable {}
}
contract Caller {
    fallback () payable public {
        selfdestruct(address(this));
    }

    receive () public {
        selfdestruct(address(this));
    }
}
