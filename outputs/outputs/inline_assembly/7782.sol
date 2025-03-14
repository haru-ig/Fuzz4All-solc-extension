pragma solidity ^0.8.0;
contract L11 {
    uint x;
    function modify() public {
        x = 4 ether;
    }
}

pragma solidity ^0.8.0;
contract L10 {
    uint x;
    constructor() public {
        x += 4 ether;
    }
    function modify() public {
        x += 2 ether;
    }
}

pragma solidity ^0.8.0;
contract L09 {
    uint x;
    constructor() public {
        x = 4 ether;
    }
    function modify() public {
        x = 2 ether;
    }
}

pragma solidity ^0.8.0;
contract L08 {
    uint x;
    constructor() public {
        x += 4;
    }
    function modify() public {
        x += 2;
    }
}

pragma solidity ^0.8.0;
contract L07 {
    uint x;
    uint y;
    uint z;
    constructor() public {
        x += 5;
        y += 3;
        z += 2;
    }
    function modify() public {
        x += 1;
        y += 1;
        z += 2;
    }
}

pragma solidity ^0.8.0;
contract L06 {
    uint x;
    constructor() public {
        x += 5;
    }
    function modify() public {
        x += 3;
    }
}

pragma solidity ^0.8.0;
contract L05 {
    uint x;
    uint y;
    uint z;
    constructor() public {
        x += 5;
        y += 3;
    }
    function modify() public {
        x = x - 1;
        y = y - 1;
    }
}

pragma solidity ^0.8.0;
contract L04 {
    uint x;
    uint y;
    uint z;
    constructor() public {
        x += 5;
        y += 3;
        z += 2;
    }
    function modify() public {
        x += 3;
        y += 3;
    }
}
/* Please
