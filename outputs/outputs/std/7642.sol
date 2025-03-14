pragma solidity ^0.8.0;
contract BadCase9 {
    uint8[12] b;
}

pragma solidity ^0.8.0;
contract BadCase10 {
    mapping(uint8 => string memory) c;
}

pragma solidity ^0.8.0;
contract BadCase11 {
    uint8[12] c;
}
pragma solidity ^0.8.0;
contract BadCase12 {
    address[] d;
}

pragma solidity ^0.8.0;
contract BadCase13 {
    uint[10] e;
}
pragma solidity ^0.8.0;
contract BadCase14 {
    uint256[4] f;
}
pragma solidity ^0.8.0;
contract BadCase15 {
    uint[12] g;
}
pragma solidity ^0.8.0;
contract BadCase16 {
    uint256[12] h;
}
pragma solidity ^0.8.0;
contract BadCase17 {
    mapping(uint[4] => uint) i;
}
pragma solidity ^0.8.0;
contract BadCase18 {
    mapping(uint[12] => uint) j;
}
pragma solidity ^0.8.0;
contract BadCase19 {
    uint[2][4] k;
}
pragma solidity ^0.8.0;
contract BadCase20 {
    mapping(uint => mapping(uint8 => uint8)) l;
}
pragma solidity ^0.8.0;
contract BadCase21 {
    mapping(uint => uint256) m;
}
pragma solidity ^0.8.0;
contract BadCase22 {
    mapping(uint => int(8)) n;
}
pragma solidity ^0.8.0;
contract BadCase23 {
    mapping(uint16 => uint(7)) o;
}
pragma solidity ^0.8.0;
contract BadCase25 {
    mapping(uint => int) p;
}
