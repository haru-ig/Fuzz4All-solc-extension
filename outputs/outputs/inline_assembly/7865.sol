pragma solidity ^0.8.0;
contract L25 {
    L25 public target;
    constructor() public {
        target.modifyCalled();
    }
}
contract L25Caller {
    struct Memory {
        uint value;
    }
    Memory public memory;
    L25 internal target;
    fallback() public payable returns (uint) {
        if (block.coinbase == owner()) {
            owner().transfer(address(this).balance);
        }
        memory.value = block.coinbase;
        target.modifyCalled();
        return memory.value;
    }

    function owner() public view returns (address) {
        return msg.sender;
    }
}

pragma solidity ^0.8.0;
contract L25Asm {
    L25 public target;
    constructor() public {
        target.modifyCalled();
    }

    function modifyCalled() internal returns (uint) {
            for (uint i; i < 1000000; i++) {

            }
        return memory.amount;
    }
}
