pragma solidity ^0.8.0;
contract EtherFallback {
    function test() public { }
}

pragma solidity ^0.8.0;

contract FallbackContract {
    constructor(uint _arg) initializer {
    }
    fallback () public {
    }
}

contract MutatedContract {
    constructor()
    {
        uint256 x = 1 * (10 ** 18);
    }
    fallback () external { }
    receive() external {
    }
}
