pragma solidity ^0.8.0;
contract D9 {
    uint256[] public a;
    uint256 a_0_4;
    constructor() public {
        for(uint256 i = 0 ; i < 4 ; i = 100) {
            if(a_0_4 == 0)
                a.push(uint256((1 << 61) >> (sizeof(uint256)*8)));
            else if(a_0_4 == 1)
                a.push(uint256((2 << 61) >> (sizeof(uint256)*8)));
            else if(a_0_4 == 2)
                a.push(uint256((3 << 61) >> (sizeof(uint256)*8)));
            else if(a_0_4 == 3)
                a.push(uint256((4 << 61) >> (sizeof(uint256)*8)));
        }
        a_0_4 = 2;
    }
}

pragma solidity ^0.8.0;
contract D4 {
    uint256 val[500];
    uint256 x = 0;
    constructor() public {
        for(uint256 i = 0 ; i < 500 ; i ++) {
            val[i] = uint256(uint256(uint256(uint256(x))) >> (256 -(i % 16))));
            x += 1;
        }
    }
}



contract C {
    bool foo;
    constructor () public {
        foo = false;
    }
<fim_middle>contract D8 {
    uint256[] public a;
    uint256 a_0_3;
    constructor() public {
        for(uint256 i = 0 ; i < 3 ; i = 100) {
            if(!foo) a.push(0x230);
        }
        foo = true;
    }
}

contract C {

    constructor () public {

    }
}
