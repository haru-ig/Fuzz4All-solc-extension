pragma solidity ^0.8.0;
contract Mutate0015b {
    uint constant constantVariable = 10;
    uint constant functionArgument = 2;
    uint input = 10;
    uint constant constantVariable2 = 150;
    modifier m(uint i) {
        if (input == constantVariable2) {
            input = functionArgument;
        }
        _;
    }
    function revoke(uint i) m(1) public returns(uint) {
        revert("");
    }
    function revoke2(uint i) m(1) public returns(uint) {
        revert(constantVariable2);
    }
    function revoke3(uint i) m(1) public {
        revert(constantVariable);
    }
    function revoke4(uint i) m(1) public {
        revert(functionArgument);
    }
}

pragma solidity ^0.8.0;
contract Mutate0016b {
    uint constant constantVariable = 10;
    uint constant functionArgument = 2;
    uint input = 10;
    uint constant constantVariable2 = 150;
    modifier m(uint i) {
        if (input == constantVariable2) {
            input = functionArgument;
        }
        _;
    }
    function revoke(uint i) m(1) public returns(uint) {
        revert("");
    }
    function revoke2(uint i) m(1) public returns(uint) {
        revert(constantVariable2);
    }
    function revoke3(uint i) m(1) public {
        revert(constantVariable);
    }
    function revoke4(uint i) m(1) public {
        revert(functionArgument);
    }
    function revoke5(uint i) m(1) public {
        revert(150);
    }
    function revoke6(uint i) m(1) public {
        revert(true);
    }
}
