pragma solidity ^0.8.0;
contract L73 {
    uint x;
    function sneaky_1(uint n) public {
        for(uint i = n + 1; i > 5; i++) {
            x = x + 2;
        }
    }
}

pragma solidity ^0.8.0;
contract L74 {
    uint x;
    function sneaky_2() public {
        uint k;
        uint j;
        assembly {
            j := 15
            k := add(mLoad(add(x, 32)), sub(mLoad(add(add(x, 32), 32)), mLoad(add(add(x, 32), 32), 32)))
            k := add(mLoad(add(x, 64)), sub(mLoad(add(add(x, 64), 32)), mLoad(add(add(x, 64), 32), 32)))
            k := mul(k, k)
            jump(k, j, j)
        }
    }
}
