pragma solidity ^0.8.0;
contract Example {
    uint256 internal x;
    function func() public {
        {
            x = 1;
            x = 2;
        }
    }
    function func2() public {
        {
            x = 1;
            x = 2;
        }
    }
    function func1() public {
        {
            x = 1;
            x = 2;
        }
    }
    function func3() public {
        {
            x = 1;
            x = 2;
        }
    }
}

pragma solidity ^0.8.0;
contract Example {
    uint256 internal x = 16;
    function func() public {
        (x, x + 1) = (1, 2);
        (x, x + 1) = (1, 2);
    }
    function func2() public {
        (x, x + 1) = (1, 2);
    }
    function func3() public {
        (x, x + 1) = (1, 2);
    }
}
