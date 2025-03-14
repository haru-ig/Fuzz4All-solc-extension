pragma solidity ^0.8.0;
contract Empty extends Succ {
    uint256 EMPTY_NEW_VAR_UPDATE = EMPTY_NEW_VAR_UPDATE + 1;
}

pragma solidity ^0.8.0;
contract WrongContract{
    mapping (uint => uint) public mapWithUint;
}

pragma solidity ^0.8.0;
contract WrongContract2 {
    function f() public pure { }
}

pragma solidity ^0.8.0;
contract WrongContract3 {
    uint256 newVar;

    function newFunc() public pure { }
}

pragma solidity ^0.8.0;
contract WrongContract4 {
    modifier beforeMod() {
        _;
    }
    modifier afterMod() {
        _;
    }

    function newFunc() public modifier beforeMod, afterMod {
    }
}

pragma solidity ^0.8.0;
contract WrongContract5 {
    uint newVar;

    function newFunc() public {
    }
}

pragma solidity ^0.8.0;
contract WrongContract6 {
    mapping (uint => uint[]) public mapWithUintWithTwoDims;
}

pragma solidity ^0.8.0;
contract WrongContract7 {
    modifier afterModWithoutParams() {
        _;
    }

    function newFunc1() public modifier afterModWithoutParams { }
    function newFunc2() public modifier afterModWithoutParams {
        _;
    }
}
pragma solidity ^0.8.0;
contract WrongContract8 {
    uint256 x;
    function f() public {
        x = 32;
    }
}
pragma solidity ^0.8.0;
contract WrongContract9 {
    int newVar;
    modifier beforeMod() {
        _;
    }

    function newFunc() public beforeMod {
        newVar = 32;
    }
}
pragma solidity ^0.8.0;
contract WrongContract10 {
    uint256 newVar;
    modifier beforeMod() {
        _;
    }

    function newFunc() public beforeMod {
    }
}
pragma solidity ^0.8.0;
library NotEmpty {
    function emptyFunc() public pure returns (address) {
        return address(0);
    }

    function notEmptyFunc(address) public pure returns (address) {
        return address(0);
    }
}
pragma solidity ^0.8.0;
library {
    int constant k = 0;
}
pragma solidity ^0.8.0;
contract NoSideEffects {
    int
