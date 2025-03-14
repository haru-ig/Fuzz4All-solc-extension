pragma solidity ^0.8.0;
contract Bar {
    function f0() public pure {}

    receive() external payable {
        return ;
    }

    fallback () external {
        f0();
        return ;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    function f0() public pure {
        return ;
    }
    function f1(address a) public {
        return ;
    }
}
