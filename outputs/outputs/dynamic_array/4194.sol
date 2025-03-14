pragma solidity ^0.8.0;
contract F {
    uint[6] public x;
    event Test(uint[6] memory input);
    constructor(uint[6] memory input) public {
        uint y = x[0] + x[1] + x[2];
        x[0] += input[3];
        x[1] += input[4];
        x[2] = input[5];
        Test(input);
    }
}

pragma solidity ^0.8.0;
contract F {
    uint[6] public x;
    bool z;
    constructor(uint[6] memory input) public {
        z = true;
        for (uint x; true; x++) {
            switch (x) {
                case 0:
                    x = 6;
                    continue x;
            }
        }
    }
}

pragma solidity ^0.8.0;
contract F {
    uint[256] public x;
    uint public z;
    constructor(uint[256] memory input) public {
        for (uint x; true; x++) {
            x += input[x];
        }
    }
}

pragma solidity ^0.8.0;
contract G {
    uint[64] memory x;
    uint public z;
    constructor(uint[64] memory input, bool b) public {
        z = b? 1 : 0;
        for (uint y; true; y = y + 1) {
        }
    }
}

pragma solidity ^0.8.0;
contract G {
    uint[64] public x;
    uint public z;
    constructor(uint[] memory input, bool b) public  {
        z = b? 1 : 0;
        x[64] = input[64];
    }
}
