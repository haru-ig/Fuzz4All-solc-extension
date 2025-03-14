pragma solidity ^0.8.0;
contract MutatedSolidity {
    uint public x;
    uint public y;
    uint public z;
    function modifyX(bytes memory data) public {
        x <- data;
    }
    function modifyY() public {
        y <- data;
    }
    function modifyZ() public {
        z <- data;
    }
}

pragma solidity ^0.8.0;
contract MutatedSolidity {
    uint public x;
    uint public y;
    function modifyX() public {
        x = fromUint(fromUint(x));
    }
    function modifyY() public {
        y = fromUint(fromUint(y));
    }
}

pragma solidity ^0.8.0;
contract MutatedSolidity {
    bytes[2] public x;
    function modify1x() public {
        x[0] = 0;
    }
    function modify2x() public {
        x[0] = 1;
        x[1] = 0;
    }
}
