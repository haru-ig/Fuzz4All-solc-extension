pragma solidity ^0.8.0;
contract NewMutated extends Mutated {
    constructor() {
        setX(x + 1);
    }
}

pragma solidity ^0.8.0;
contract NewMutatedAndMutated {
    constructor() {
        setX(x + 1);
        uint256[] memory x = new uint256[](3);
        x[0] = 3;
        x[1] = 1;
        x[2] = x[0] + x[1];
        require(x[2] == x.length, "Bad array size for sum");
    }
}
