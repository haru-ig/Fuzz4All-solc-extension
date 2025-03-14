pragma solidity ^0.8.0;
contract D {
    receive() external payable {
        if (msg.value > 9 ether) throw;
    }
}
pragma solidity ^0.8.0;
contract Fallback {
    receive() external payable {
    }
}

pragma solidity ^0.8.0;
contract Caller {
    function call1() public pure external {
        Storage(address(new Storage())).call();
    }
    function call2() public pure external {
        D(address(new D())).call();
    }
}
