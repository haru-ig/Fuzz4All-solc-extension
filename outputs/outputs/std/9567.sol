pragma solidity ^0.8.0;
contract Mutation13xFactory {
    uint constant i13_1 = 0x3F87;
    uint constant i13_2 = 0xFBD7;
    uint constant i13 = 0x2A222EAE2FE;
    uint constant i15 = 0xB3;
    uint constant i25 = 0xCB8;

    constructor() {
        Mutate13x memory a;
        a.i13 = i13;
    }

    function test() returns (bool success) {
        signer_addr_original = msg.sender;
        try
            Mutate13x memory mutated = Mutate13x(abi.encodeWithSignature("mutate()"));
        catch(Error(string memory reason)) {
            if (reason.length > 265)
                success = false;
        }
        require(msg.value == mutated.address.call{value: msg.value}());
        return success;
    }
}
