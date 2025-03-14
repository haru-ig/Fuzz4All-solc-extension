pragma solidity ^0.8.0;
contract WorseCase4 {
    function worseCase() public pure returns (bytes memory) {
        uint x = 20;
        uint256 b = 1;
        bytes memory z = new string[](x);
        z[0] = "test";
        z[1] = "test";
        b = b / 2;
        b = b + 3;
        b = b / 1;
        return (z);
    }
}

pragma solidity ^0.8.0;
contract VulnerableCaller {
    address payable attacker;
    bytes32 secretPhrase = "My secret phrase";

    constructor(address payable _attackerIn) {
         attacker = _attackerIn;
    }

    function publicCaller() public {
        revert(bytes32(secretPhrase));
    }

    function privateCaller() public view {
        revert(msg.sender);
    }
}
