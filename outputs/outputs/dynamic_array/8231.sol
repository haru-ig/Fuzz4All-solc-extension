pragma solidity ^0.8.0;
contract MutatedSolidity {
    uint public x;
    uint public y;
    uint public z;
    uint storedX;
    uint storedZ;
    function modifyX(uint t) public {
        x = t;
    }
    function modifyY() public {
        y = 2*x + storedX;
    }
    function modifyZ(uint t) public {
        z = 2*x + t;
    }
    function modifyXStoredInStorage() public {
        storedX = x;
    }
    function modifyZStoredInStorage() public {
        storedZ = 2*x + storedX;
    }
}

pragma solidity ^0.8.0;
contract MutatedSolidity {
    uint public x;
    uint public y;
    uint public z;
    uint storedX;
    uint storedZ;
    function modifyX(uint t) public {
        x = t;
    }
    function modifyY() public {
        y = 2*x + storedX;
    }
    function modifyZ(uint t) public {
        z = 2*x + t;
    }
    function modifyXStoredInStorage() public {
        storedX = x;
    }
    function modifyZStoredInStorage() public {
        storedZ = 2*x + storedX;
    }
}
