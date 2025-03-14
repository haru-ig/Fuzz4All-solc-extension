pragma solidity ^0.8.0;
contract PreservedSematic {
    uint x;
    function f() public {
        x = x + 1;
    }
}

}


pragma solidity ^0.8.0;

contract Test {
    function test(bool, uint256) public {

    }
}

}


pragma solidity ^0.8.0;

contract Test {
    function test(bool, uint256) public {

    }

    fallback() external payable {
    }

    receive() external payable {
    }
}



pragma solidity ^0.8.0;

contract Test {
    event Fallback();
    fallback() external payable {
        Fallback();
    }
}
