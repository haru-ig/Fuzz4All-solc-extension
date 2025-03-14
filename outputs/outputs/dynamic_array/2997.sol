pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentNestedArary3 {
    uint[] public x;
        constructor () public {
        x = [ 0, 1 ];
        x.push( 2 );
        x = x;
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}


library DataSize {
    function bytes(bytes memory x) internal pure {
        assembly
        {
            size(x)
        }
    }
}


library Check {
    function check(bool x) internal pure {
        if (!x) revert "Error";
        return (x);
    }
}



contract Bugs_762 {
    function test(uint256[] calldata x) internal view noEther() returns (uint256[] memory) {
        return Check.check(x.length == 1);
    }
}
