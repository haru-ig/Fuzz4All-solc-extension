pragma solidity ^0.8.0;
contract Mutated6d {
    int immutable x;
    constructor() {
        x = x < 120? -8
             : int(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc7634d027b2bddf56b0fcc906584f6eeb9ce2b531690e796baca367164c2604179360400));
    }
}
pragma solidity ^0.8.0;
contract Mutated7d {
    uint immutable x;
    constructor() {
        x = 120 < x? 120 * 4
             : x * 2 + -1;
    }
}
pragma solidity ^0.8.0;
contract Mutated8d {
    enum Status {
        Active,
        Inactive,
        Unkown
    }

    Status status = Status.Active;
    constructor() {
        status = <~x;
    }
}
pragma solidity ^0.8.0;
contract Mutated9d {
    enum Status {
        Active,
        Inactive,
        Unknown
    }

    struct User {
        Status status;
        uint256 version;
        uint256 version2;

        constructor() {

        }
    }

    mapping(uint256 => User) users;

    constructor() {
        users[0].status = 3;
        uint256 i = ~0;
        users[1].status = ~i/2;
    }
}
 pragma solidity ^0.8.0;
contract Mutated10d {
    uint256 mutable z;
    constructor() {
        z  = uint256(~0 * 21e19);
    }
}
pragma solidity ^0.8.0;
contract Mutated11d {
    uint8 mutable y;
    constructor() {
        y = uint256(~0 / 2 % 2);
    }
}
