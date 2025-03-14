pragma solidity ^0.8.0;
contract Mutate17 {
    uint256 public y;
    constructor () {
        uint256 x;
        x = 2 * 4;
    }
}

pragma solidity ^0.8.0;
contract Mutate18 {
    uint256 public y;
    constructor () {
        uint256 x;
        x = 2 + 2;
        x = x & 2;
    }
}

pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract Mutate19 {
    uint256 public data;
    function m() public {
        data = 8;
        uint256 x = data;
        x = x * data;
        data = data + x;
    }
    function call() public {
        m();
    }
}
pragma solidity ^0.8.0;
contract Mutate20 {
    uint256 public data;

    function m() public {
        if (msg.value!= 0)
            revert("Incorrect value.");
        data = 8;
        uint256 x = data;
        x = x * data;
        data = data + x;
    }
    function call() public {
        m();
    }
}
