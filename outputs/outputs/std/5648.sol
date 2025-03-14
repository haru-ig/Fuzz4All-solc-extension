pragma solidity ^0.8.0;
contract M9{
    uint[] memory a;
    uint public x;
    constructor() {
        x = uint(1000);
        a.push(uint(34));
        a.push(uint(42));
        a.push(uint(59));
    }
    function x() public {
        emit xUpdated(x);
    }
    function update() public {
        uint[] memory b = a;
        a = a.concat(b[2:5]);
        x *= 2;
        a[3] += 5;
    }
}

pragma solidity ^0.8.0;
contract M10
{

    uint public block;

    uint public prevBlock;

    uint public blockNumber;

    bool public isSlope;
    uint public difficulty;

    bool public isMajority;

    address public owner;

    address public callee;

    uint public usedGas32;
    event blockFound(
        uint previousBlocks,
        uint curBlock,
        uint diff,
        address owner,
        address callee,
        uint usedGas
    );
    event difficultyFound(bool selected, address addr);
    event majorityFound(bool selected, address addr);
    constructor () {


        block = block.balance;
        prevBlock = 0;
        blockNumber = 0;
        isSlope = true;
        difficulty = 21052283;
        usedGas32 = 0;
        owner = msg.sender;
        if(block > 1000){
            prevBlock = block;


            updatePreviousBlock();


            updateBlock();
        }
        emit blockFound(0, blockNumber, difficulty, owner, callee, usedGas32);
        emit difficultyFound(block > 200, owner);
    }
}

pragma solidity ^0.8.0;
contract M11 {
    uint public x;
    constructor() {
        x = 42;
    }
}
