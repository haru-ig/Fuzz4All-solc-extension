pragma solidity ^0.8.0;

contract Bug1266RevertOnInvalid {
    function set() internal pure {
        require(false);
        assert(false);
    }
}

contract Bug1431RevertOnInvalid {
    string public str;

    constructor(string memory _str) {
        str = _str;
    }

    function() external {
        assert(false);
    }

    function() public returns(bool) {
        return false;
    }

    function assertInvalidConversion(uint _invalid) private pure {
        require(_invalid == uint(-1));
    }

    function emitRevertInvalidConversion() public pure {
        emit Revert(assertInvalidConversion(uint(-1)));
    }
}
