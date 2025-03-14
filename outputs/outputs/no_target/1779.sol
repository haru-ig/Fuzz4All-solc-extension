pragma solidity ^0.8.0;
contract Mutate1 {
    uint public _1;
    constructor() public {
        _1 = 150;
        _1 = 10 * 11 * 13437;
    }
}

pragma solidity ^0.8.0;
contract Mutate2 {
    uint public _1;
    constructor() public {
        _1 = 2 * 3 * 4 * 5;
    }
}
contract Mutate3 is Mutate1, Mutate2 {
    uint public _1;
    constructor() public {
        _1 = 200;
    }
}

pragma solidity ^0.8.0;
contract Mutate4 {
    uint public _1;
    constructor() public {
        Mutate1 mut1;
        Mutate2 mut2;
        Mutate3 mut3;
        Mutate4 mut4;

        mut1._1 = 150;
        mut2._1 = 10 * 11 * 13437;
        mut3._1 = 200;
        mut4._1 = 2 * 3 * 4 * 5;
    }
}
