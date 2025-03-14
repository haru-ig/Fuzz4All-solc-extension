pragma solidity ^0.8.0;
contract ContractWithoutNewModifierCheck {
    modifier valid() {
        require(false);
        _;
    }
    function method(uint32 input) public view valid() {
    }
}

pragma solidity ^0.8.0;
contract NonStandardContract {
    modifier valid() static {
        require(true);
        _;
    }
}

pragma solidity ^0.8.0;
contract MutatedCode {
    function method(uint32 input) public static valid() {
    }
}
