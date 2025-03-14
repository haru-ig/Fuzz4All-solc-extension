pragma solidity ^0.8.0;
contract T5D {
    uint256 s1 = 0;
    uint256[23] array;
    constructor() public {
        array.length;
    }
    function add(uint256 x) public {
        s1 += x;
    }
}

pragma solidity ^0.8.0;
contract T6D {
    uint256[23] a;
    uint256 s1 = 456;
    constructor() public {
        a[12];
    }
    function add() public {
        s1 += a[23];
    }
}

pragma solidity ^0.8.0;
contract T7D {
    uint256[] memory b;
    uint256 s1 = 456;
    constructor() public {
        b[17];
    }
    function add() public {
        s1 += b[16];
    }
}

pragma solidity ^0.8.0;
contract T8D {
    uint256 b1[19][23][31];
    uint256 s1 = 456;
    constructor() public {
        b1[10][20][17];
    }
    function add() public {
        s1 += b1[17][16][13];
    }
}
