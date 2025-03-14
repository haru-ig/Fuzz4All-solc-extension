pragma solidity ^0.8.0;
contract Mutate60 {
    uint public a;
    uint public b;
    uint public x;
    constructor(uint256, uint256) public {
        a = x;
        b = a + 2;
    }
}
pragma solidity ^0.8.0;
contract Mutate70 {
    uint public a;
    uint public b;
    uint public x;
    constructor(uint256, uint256) public {
        x = 15;
        a = x + 2;
        b = a + 2;
    }
}

pragma solidity ^0.8.0;
contract Mutate80 {
    uint public a;
    uint public b;
    uint public x;
    constructor(uint256, uint256) public {
        a = x + 2;
        b = a + 2;
    }

}

pragma solidity ^0.8.0;
contract Mutate80 {
    uint public a;
    uint public b;
    uint public x;
    constructor(uint256, uint256) public {
        a = x;
        b = x + 2;
    }
}
