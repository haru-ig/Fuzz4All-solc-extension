pragma solidity ^0.8.0;
contract L {
    uint b[3];
    uint c;
    function m() external pure {
    }
}
pragma solidity ^0.8.0;
contract L {
    uint[3] b = [uint(0), uint(1), uint(2)];
    uint c;
    function m() external pure {
    }
}

pragma solidity ^0.8.0;
contract L {
    uint b = 0xdeadbeef;
    uint c;
    function m() public pure {
    }
}
