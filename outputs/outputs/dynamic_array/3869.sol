pragma solidity ^0.8.0;

contract D {
    address c;
    constructor (address value) public {
        c = value;
        c.transfer(msg.sender);
    }
    function f() public pure {
        if(c.call(0, "", "")
            == bytes4(keccak256("function() public pure returns (uint256) { return 42; }"))){
            return;
        }
        revert("Error in calling contract");
    }
    receive() external {}
}

pragma solidity ^0.8.0;
contract D {
    function f(bytes memory b) public pure {
        return D();
    }
}

contract C {
    pragma experimental ABIEncoderV2;
    constructor(byte b, bytes memory c) public {
        D(f(c)).f(c);
    }
}
