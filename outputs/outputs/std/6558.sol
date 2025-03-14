pragma solidity ^0.8.0;
contract Mutate6 {
    function myNewFunction() public pure {
        x = 1;
    }
}

pragma solidity ^0.8.0;
contract Mutate7 {
    function changeUint() public pure {
        uint a = 1;
    }
}

pragma solidity ^0.8.0;
contract Mutate8 {
    function changeUint() public pure {
    }
    function changeArray() public pure {
        uint[] memory values;
        uint[] memory x;
    }
}

pragma solidity ^0.8.0;
contract Mutate9 {
    function changeUint() public pure {
    }
    function changeArray() public pure {
        uint[] memory values;
    }
    function changeVoid() public pure {
    }
}
