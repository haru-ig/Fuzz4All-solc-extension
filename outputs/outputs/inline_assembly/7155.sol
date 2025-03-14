pragma solidity ^0.8.0;
contract OptimizelyExample108 {
    uint internal value = 1 << 30;
    constructor(){
        value >>= 2;
        value <<= 1;
        value &= 1;
        value ^= 1;
        value ^= 1;
    }
}

pragma solidity ^0.8.0;
contract OptimizelyExample109 {
    uint internal value = 1 << 30;
    constructor(){
        value >>= 2;
        value <<= 1;
        value &= 1;
        value ^= 1;
    }
}
contract OptimizelyExample110 {
    mapping(address => int) internal balances;
    address internal owner;

    constructor() {
        owner = msg.sender;
        balances[msg.sender] = 0;
    }

    fallback() {
        require(msg.sender == owner);
        uint amount = msg.data;
        balances[msg.sender] += amount;
    }

    function() external payable {}
}

pragma solidity ^0.8.0;
contract OptimizelyExample111 {
    uint internal value = 1 << 30;
    constructor(){
        value >>= 2;
        value <<= 1;
        value &= 1;
        value ^= 1;
    }
}

pragma solidity ^0.8.0;
contract OptimizelyExample112 {
    uint internal value = 100;
    constructor(){
        value >>= 2;
    }
}

pragma solidity ^0.8.0;
contract OptimizelyExample113 {
    struct InnerStruct {
        uint a;
        uint b;
    }

    mapping(address => InnerStruct[]) internal maps;

    mapping(address => uint) internal counter;

    function() public payable {
        address addr = msg.sender;
        maps[addr].push(InnerStruct({
            a : 0,
            b : 0
        }));
        counter[addr]++;
    }
}
