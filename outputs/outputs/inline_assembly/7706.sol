pragma solidity ^0.8.0;
contract L30 {
    uint public constant value = 4;
    uint i = 0;
    function f() public {
        i++;
        assembly {





            i := i + 1
            i := i - 1
            i := i > 4
        }

    }
}
contract L40 is L20, L30 {
    constructor() Payable {
        _mint(msg.sender, value);
    }
}
contract L50 {
    uint public constant value = 4;
    uint i = 0;
    constructor() {
        _mint(msg.sender, value);
    }
    function f() public {
        i++;
        assembly {





            i := i + 1
            i := i - 1
            i := i > 3
            i := i == 0? 0 : i
        }
    }
}
