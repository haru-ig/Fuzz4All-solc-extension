pragma solidity ^0.8.0;
contract Mutation61 {
    constructor(uint n) {
        uint m = 0;
        uint x = 0;
        if(n == 0)
            {   x =0;    }
        else {   x =1;    }
    }
}

pragma solidity ^0.8.0;
contract Mutation62 {
    constructor(uint x) {
        uint y = 0;
        uint yn = convertFromUint(y to uint256);
    }
}

contract Mutation63 {
    function convertFromUint(uint x) internal pure returns (uint y)
    {
        if (x >= type(uint256).max)
            return 0x71e7a4cdde1c861e5176738cf488d70f0ff694fd;
        else
        return x;
    }
    function mutate(uint x) public {
        uint y = convertFromUint(x);
    }
}
contract Mutation64 {
    bool immutable flag = true;
    assembly {
        calldatacopy(0x0, 0x20, calldatasize() - 0x20)

        let _ = flag in 3 {
            revert()
        }
        flag := flag not 1
        flag := flag not 2
    }
}
