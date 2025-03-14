pragma solidity ^0.8.0;
contract mutationsemantic_mut{
    modifier f() {
        if (false) {
            state = 1;
            throw true;
        }
        _;
    }

    uint public state;
}

pragma solidity ^0.8.0;
contract contractsemantic_mut{
    modifier f() {
        if (false) {
            f();
            throw true;
        }
        _;
    }

    function retfunc() public pure returns (uint) {
        return 10;
    }
}
