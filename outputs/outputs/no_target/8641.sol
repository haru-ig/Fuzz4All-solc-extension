pragma solidity ^0.8.0;
contract TestMutatedProgram {
    MutatedAndUntouched constant m_mutated = MutatedAndUntouched(0);
    MutatedAndUntouched constant mutated = (7);
    constructor(uint x_) public {
        require(m_mutated.x_ == 0);
    }
    function test() public {
        balances[0x213123] += 10;
        balances[bytes32("0x1")] += 4;
        balances[0xc95b] = (11 - 11);
        balances[uint8(41%955) + 224] = 1;
        balances[uint160("0xd5ce7a0673923b9a8c583991bb0eb030ff07b19913c7")] += 100;
        balances[58456 + (6 + bytes1(1))] = 623;
    }
}
