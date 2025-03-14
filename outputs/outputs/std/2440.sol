pragma solidity ^0.8.0;
contract Mutated {}

pragma solidity ^0.8.0;
contract Address {
    function addr() public pure returns (address) {}
}

pragma solidity ^0.8.0;
contract Immutable {}

pragma solidity ^0.8.0;
contract StateChange {}

pragma solidity ^0.8.0;
contract Call {
    function addr() public pure returns (address) {}
    function fun(address a) public {
        address mem = addr;
        a;
    }
}

pragma solidity ^0.8.0;
contract Mutagment {
    int iv = 10;

    function fun(address a) public pure returns (int) {
        int res = iv - 1;
        selfdestruct(a);
        return res;
    }
    function test() public pure returns (int) {
        int res = fun(address(0));
        return res;
    }
}
