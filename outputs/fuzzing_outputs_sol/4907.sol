pragma solidity ^0.8.0;

contract ContractWithFallback {
    constructor() {
        Mute(address(new MutedFallback()));
    }
    receive() external payable {}
}


pragma solidity ^0.8.0;
contract ContractWithFallback {
    constructor() {
        if (false) {
            Mute(address(new MutedFallback()));
        } else if (true) {
            Mute(address(new MutedFallback()));
        }
    }
    receive() external payable {}
}
