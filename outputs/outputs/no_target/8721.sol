pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV01Mutated {
    uint256 x;
    contructor(uint _x) {
        x = _x;
    }
    function f() public {
        x += x;
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV01Mutated {
    uint256 x;
    constructor(uint _x) {
        x = _x;
    }
    function g() public {
        x += x * x;
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV01Mutated {
    uint256 x;
    constructor(uint _x) {
        x = _x;
    }
    function gg() public {
        x -= x/1000;
    }
}
