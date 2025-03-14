pragma solidity ^0.8.0;
contract BadCase9 {
    struct Missile {
        address launcher;
        uint8 damage;
    }
    uint16[1] missile;
}

pragma solidity ^0.8.0;
contract BadCase7 {
    uint16[2] [32] foo;
}

pragma solidity ^0.8.0;
contract BadCase6 {
    using Array for uint256[];
}

pragma solidity ^0.8.0;
contract C {
    uint256 foo;
}
