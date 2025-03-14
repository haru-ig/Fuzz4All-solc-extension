pragma solidity ^0.8.0;
contract T9E11ES_mut7_1 {
    constructor(uint y) {
        i = y / 2;
    }
}
pragma solidity ^0.8.0;
contract T9E12ES_mut7_2 {
    constructor(uint y) {
        i = y - 1;
    }
}
pragma solidity ^0.8.0;
contract T9E13ES_mut7_3 {
    constructor(uint y) {
        i = uint(y) - 1;
    }
}
pragma solidity ^0.8.0;
contract T9E14ES_mut7_4 {
    uint i;
    constructor(uint y) {
        i = y + 1;
        i = y++;
    }
}
pragma solidity ^0.8.0;
contract T9E15ES_mut7_5 {
    uint[15] _i;
    constructor(uint y) {
        _i[0] = y;
        _i[1] = y;
        _i[2] = y;
        _i[3] = y;
    }
}
pragma solidity ^0.8.0;
contract T9E16ES_mut7_6 {
    uint[] _i;
    constructor(uint y) {
        _i.push(y);
        _i.push(y);
        _i.push(y);
        _i.push(y);
    }
}
pragma solidity ^0.8.0;
contract T9E17ES_mut7_7 {
    uint[256] _i;
    constructor(uint y) {
        _i[0] = y;
        _i[1] = y;
        _i[2] = y;
        _i[3] = y;
    }
}
pragma solidity ^0.8.0;
contract T9E18ES_mut7_8 {
    uint[1] _i;
    constructor(uint y) {
        _i[0] = y;
        _i[1] = y;
        _i[2] = y;
    }
}
pragma solidity ^0.8.0;
contract T9E19ES_mut7_9 {
    uint[13][21] _i;
    constructor(uint y) {
        _i[0][0] =
