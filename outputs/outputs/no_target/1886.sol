pragma solidity ^0.8.0;
contract Mutation60b {
    pragma solidity ^0.8.6;
    function () public {
        uint x = x*x + x*x + x*x + x*x;
        uint y = uint(address(this));

        revert("expected x!= 0 but was " + x);
    }
}



pragma solidity ^0.8.0;
