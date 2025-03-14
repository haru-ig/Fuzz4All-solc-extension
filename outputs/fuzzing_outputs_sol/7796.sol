pragma solidity ^0.8.0;
contract CallingDeprecated {
    modifier onlyBeforeFallback {
        address addr = msg.sender;
        address faddr = this.fallback();
        (bool success, ) = addr.call{value: msg.value}(bytes(faddr));
        if (success == false) revert('Fallback failed to execute');
        _;
    }
}
