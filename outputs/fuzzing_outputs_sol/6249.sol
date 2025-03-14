pragma solidity ^0.8.0;
contract Mutant2Mutator {
    event Muted(address indexed addressCaller, address indexed mutant);
    constructor() {
    }
    bool mutant;
    function trigger() public {
        mutant = true;
        triggerWithoutReturn();
        emit Muted(msg.sender, address(this));
    }
    function triggerWithoutReturn() public view {
        emit Muted(msg.sender, address(this));
        mutant = false;
    }
}

pragma solidity ^0.8.0;
contract Mutant1Mutator {
    event Muted(address indexed addressCaller, address indexed mutant);
    constructor() {
    }
    bool mutant;
    function trigger() public {
        mutant = true;
        transfer(address(this), 1 ether);
        emit Muted(msg.sender, address(this));
        mutant = false;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    function trigger() public payable {
        assembly {

            let data := sub(sub(gas, 50), 2048)


            let ptr := mload(0x04)
            mstore(ptr, data)


            let mutant := sload(0x80)
            lstore(0x7fc, ptr)
            mutant()
            ret()
        }
    }
}
