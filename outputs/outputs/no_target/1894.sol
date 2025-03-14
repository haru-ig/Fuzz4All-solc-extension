pragma solidity ^0.8.0;
contract Mutation60_2 {
    constructor(uint x) {
        uint z = 0;
        uint y = x / 1;
        x = y * 1;
    }
}

pragma solidity ^0.8.0;
contract Mutation60_3 {
    constructor(uint x) {
        uint z = 0;
        uint y = 1 / x;
        x = y * 1;
    }
}

pragma solidity ^0.8.0;
contract Mutation60_4 {
    constructor(uint x) {
        {
            uint z = 0;
            uint y = 1 / uint160(x);
            x = y * 1;
        }
    }
}

pragma solidity ^0.8.0;
contract Mutation60_5 {
    constructor(uint x) {
        {
            uint z = 0;
            uint y = uint160(1) / x;
            x = y * 1;
        }
    }
}

pragma solidity ^0.8.0;
contract Mutation60_6 {
    constructor(uint x) {
        {
            uint z = 0;
            uint y = uint160(1) / uint160(x);
            x = y * 1;
        }
    }
}

pragma solidity ^0.8.0;
contract Mutation60_7 {
    constructor() {
        for (;;) {
            uint z = 0;
            {
                uint y = 1 / uint160(0);
            }
            break;
        }
    }
}

pragma solidity ^0.8.0;
contract Mutation60_8 {
    constructor(uint z, uint y) {
        {
            uint z1 = 0;
            uint y1 = 1 / uint160(y);
            uint x = y1 * 1;
        }
    }
}

pragma solidity ^0.8.0;
contract Mutation60_9 {
    constructor(uint x, uint y, uint z) {
