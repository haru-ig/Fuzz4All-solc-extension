pragma solidity ^0.8.0;
contract B {
    uint public x;
    uint public y;

    function add() public {

        x = uint(100 + (3 * 2) / 5) - 2;
    }
}

pragma solidity ^0.8.0;
contract B {
    uint public x;
    uint public y;

    function add() public {

        x = 100 + (3 * (5 / 2)) / 2;
    }
}

pragma solidity ^0.8.0;
contract B {
    uint public x;
    uint public y;

    function add() public {

        x = uint(100 + (3 * 2) / 32);
    }
}
