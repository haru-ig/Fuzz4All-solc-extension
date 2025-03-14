pragma solidity ^0.8.0;
contract Test30000 {
    address public adr;
    mapping (uint8 => uint8) private map;
    constructor () public {
        emit Log();
        adr = msg.sender;
    }
    fallback () external {
        emit Log();
    }
    event Log ();
}

pragma solidity ^0.8.0;
contract Test{
    uint8 x;

    constructor () public
    {
        x = 0;
    }

    function set() public {
        x = 0;
    }
}
