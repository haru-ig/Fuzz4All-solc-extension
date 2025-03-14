pragma solidity ^0.8.0;
contract L22 {
    uint x;
    constructor() public {
        x += 2 ether;
    }
    function modify() public {
        _modify();
    }
    function _modify() internal {
        x += 2 ether;
    }
}



pragma solidity ^0.8.0;
contract L8 {
    uint x;
    constructor() public {
        x++;
    }
    function modify() public {
        x = 1;
    }
}


pragma solidity ^0.8.0;
contract L9 {
    uint x;
    constructor() public {
        x += 1 ether;
    }
    function modify() public {
        emit Modify();
    }
    event Modify();
    function modify2() public {
        _modify2();
    }
    function _modify2() internal {
        x++;
    }
}


pragma solidity ^0.8.0;
contract L10 {
    uint x;
    constructor() public {
        x++;
    }
    function modify() public {

        _pay(msg.value);
    }
    function _pay(uint256 val) private {
        x += val;
        if (x > 0) {
            emit Modify();
        }
    }
}
