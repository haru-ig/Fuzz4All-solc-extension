pragma solidity ^0.8.0;
contract mutation2 {
    uint public c;
    function m() public {
        c = c + 3;
    }
}

pragma solidity ^0.8.0;
contract mutation1 {
    uint public c;
    function m() public {
        c = c + 3;
    }
}

pragma solidity ^0.8.0;
contract mutation1 {
    uint public c;
    function m() public {
        c = c + 5;
        c = c + 3;
    }
}
