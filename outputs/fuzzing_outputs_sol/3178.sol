pragma solidity ^0.8.0;
contract Contract11Mut1{
    modifier noFallback{
        require(msg.value > 1 ether, "Must pay at least $1.0 for fallback.");
        _;
    }
    uint256 public num;
    constructor() {
        num = 1;
        num = 2;
    }
}

pragma solidity ^0.8.0;
contract Contract11Mut2{
    uint256 public num;

    constructor() {
        num = 1;
        num = 2;
    }

    function callCaller(uint a) public payable noFallback{
        uint i = num;
        callFunction(a);
        if(a == 1){
            num = 1;
            num = 2;
        } else {
            uint256[] memory b = [i, i];
            num = b[0]+b[1];
        }
    }
}

pragma solidity ^0.8.0;
contract Inheritance {
    uint x;
    uint public y;
    function init(uint x) public {
        y = x + 1;
        x = x + 1;
    }
}

pragma solidity ^0.8.0;
contract Modifiers {
    function init(uint x) public {
        (x + 1) * (x + 1);
    }
}


pragma solidity ^0.8.0;
contract Contract11Mut3{
    uint256 public num;

    modifier noFallback{
        require(msg.value > 1 ether, "Must pay at least $1.0 for fallback.");
        _;
    }

    constructor() {
        num = 1;
        num = 2;
    }

    function callFunction2() public payable noFallback{
        if(msg.value == 2 ether){
            num = num+ 1;
            num = num+ 1;
            Fulfilled(msg.sender, num);
        }
    }
}
