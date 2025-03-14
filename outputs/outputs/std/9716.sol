pragma solidity ^0.8.0;
contract MutateNeg2 {
    uint x;
    uint y;
    constructor() {
        x = 0x0;
        y = -1;
    }
}

pragma solidity ^0.8.0;
contract MutatePos3 is MutatePos2 {
    constructor() {
        x = 0xd51e3c7707f5423ef63be05c66ab3859d389586d8ec7ef91d660835af5c635e0;
        y = 0x0;
    }
}
pragma solidity ^0.8.0;
contract MutateNeg3 is MutateNeg2 {
    constructor() {        x = 0x888888888888888888888888888888888888888888888888888888888888888;
        y = 0xb5680231db28e8ef03f5811ed460d5816af1af1a82003dede1f4649a7c07a502;
    }
}
pragma solidity ^0.8.0;
contract MutateAbs3 {
    uint x;
    uint y;
    constructor() {
        x = -3;
        y = 2;
    }
}

pragma solidity ^0.8.0;
contract MutateMin3 is MutateAbs3 {
    constructor() {
        x = 0;
        y = 2;
    }
}
pragma solidity ^0.8.0;
contract MutateMax3 is MutateAbs3 {
    constructor() {
        x = 2;
        y = 0;
    }
}
pragma solidity ^0.8.0;
contract MutateSum3 is MutateAbs3 {
    constructor() {
        x = 66;
        y = 333;
    }
}
pragma solidity ^0.8.0;
contract MutateDiff3 {
    uint x;
    uint y;
    uint z;
    constructor() {
        x = 3;
        y = 8;
        z = 0;
    }
}

pragma solidity ^0.8.0;
contract MutateDiff4 is MutateDiff3 {
    constructor() {
        x = 0;
        y = 3;
        z = 1;
    }
}
pragma solidity ^0.8.0;
contract MutateNegAbs3 {
    uint x;
    uint y;
    uint z;
    constructor() {
        x = 3;
        y =
