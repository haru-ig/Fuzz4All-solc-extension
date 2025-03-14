pragma solidity ^0.8.0;
contract D {
constructor(address a) public {
e = a;
}
address private e;
}

# 139 "test.sol" 2
pragma solidity ^0.5.7;

contract Foo {
    function f() public pure returns (uint256) {
        return 10;
    }
}

contract Test {
    function test() public {
        Foo f = new Foo();
        uint256 result = -2**25;
        bool success;
        (success,   ) = (uint0.5-result,   );
        assert(result = (f.f()).sub(uint(1e18)).add(uint(1e25)));
    }
}
