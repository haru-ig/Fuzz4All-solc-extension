pragma solidity ^0.8.0;
contract test275 {
    uint [100] a;
    constructor() public {
        a[0] = 4;
    }
}

pragma solidity ^0.8.0;
contract test276 {
    uint [100] a;
    constructor() public {
        a[0] = 4;
        assembly {
            pop { return(0) }
        }
    }
    function test() public returns (bool) {
        if (a.length == 100) {
            a[0] = 2;
            assembly {
                pop { return(0) }
            }
            assert(a.length == 0);
        }
        return false;
    }
}
