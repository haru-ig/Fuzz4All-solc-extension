pragma solidity ^0.8.0;
contract D8 {
    uint256[] public a;
    uint256 a_0_4;
    constructor() public {
        a.push(0x0);
        a_0_4 = 1;
    }
}

pragma solidity ^0.8.0;
contract D7 {
    uint256[] public a;
    uint256 a_0_4;
    constructor() public {
        a.push(0x0);
        a_0_4 = 1;
        for(uint256 i = 3 ; i >= 0 ; i -= 5) {
            a[i] = a[i] * 2;
        }
    }
}

pragma solidity ^0.8.0;
contract D6 {
    uint256[] public a;
    uint256 a_0_4;
    constructor() public {
        for(uint256 i = 0 ; i < 4 ; i += 5) {
            a.push(0, uint8(0xFF))
            a_0_4 = 3;
        }
    }
}

pragma solidity ^0.8.0;
contract D5 {
    uint256[] public a;
    uint256 a_0_4;
    constructor() public {
        a[0] = 0;
        for(uint256 i = 0 ; i < 4 ; i += 5) {
            a[i] = 0;
        }
        for(uint256 i = 0 ; i < 4 ; i += 5) {
            a[i] = 0;
        }
        a[0] = 0;
    }
}

pragma solidity ^0.8.0;
contract D4 {
    uint256[] public a;
    uint256 a_0_4;
    constructor() public {
        a[0] = 0;
        a[1] = 0;
        for(uint256 i = 0 ; i <
