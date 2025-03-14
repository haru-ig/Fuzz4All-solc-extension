pragma solidity ^0.8.0;
contract CallFallbackFunctionThreeWithoutFallback_0_O {
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract CallThreePlusFallback_0_O_PlusFallback_0_O {
    receive() external payable {}
}
contract CallThreeWithoutFallback_0_O_PlusFallback_0_O {
    receive() external payable {}
}

contract CallFallbackFunction_0_O {
    address payable receiver;

    constructor() {
        receiver = msg.sender;
    }

    fallback() external payable {
        emit Transfer(address(this), receiver);
        receiver.transfer(address(this).balance);
    }

    receive() external payable {}
}
contract CallThreePlusFallback_0_O {
    receive() external payable {}
}
contract CallThreeWithoutFallback_0_O {
    receive() external payable {}
}
