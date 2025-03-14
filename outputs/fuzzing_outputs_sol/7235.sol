pragma solidity ^0.8.0;
contract ValueMutated2 {
    uint256 public  contractValue = 0x0;
}

pragma solidity ^0.8.0;
contract Fallback {
    receive() external payable {}
}
contract Fallback2 {
    event Fallback2Executed();
   Fallback2(){}
    receive() external payable {
        Fallback2Executed();
    }
}
contract Caller {
    callme();

    function callme() public payable {

    }
}

pragma solidity ^0.8.0;
contract Caller2 {
    uint256 public  contractValue = 0x0;

    receive() external payable {}
    function example5() public payable {
        contractValue = msg.value;
    }
}
contract Caller3 {
    uint256 public  contractValue = 0x0;

    receive () external payable {}
    function example5() public payable {
        contractValue = address(this).balance;
    }
}
contract Caller4 {
    uint256 public  contractValue = 0x0;

    receive () external payable {}
    function example5() public payable {
        contractValue = block.timestamp;
    }
}
