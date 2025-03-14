pragma solidity ^0.8.0;
contract BetterCase {
    function modifies(uint[5][5][5] memory a, uint x) public {
        a[1][0][0] -= x;
    }
}

pragma solidity ^0.8.0;
contract BetterCase5 {
    function modifies(uint[5][5][5] memory a, uint x) public {
        a[6][0][0] -= x;
    }
}

pragma solidity ^0.8.0;
contract BetterCase9 {
    function modifies(uint[5][5][5] memory a, uint x) public {
        a[0][1][0] -= x;
    }
}

pragma solidity ^0.8.0;
