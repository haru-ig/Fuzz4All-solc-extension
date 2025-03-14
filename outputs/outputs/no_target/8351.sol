pragma solidity ^0.8.0;
library NonChecked1 {
    function f() public pure returns (bool) {
        unchecked {
            return true;
        }
    }
}


pragma solidity ^0.8.0;
contract NonChecked2 {
    constructor() public {
        unchecked {
            revert();
        }
    }
}
