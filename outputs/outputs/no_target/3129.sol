pragma solidity ^0.8.0;
contract third1{
    uint public v;
    constructor()public{
        v = 0;
    }
    function g(uint x) external {
        v += x;
    }
}

contract second {
    uint public v;
    constructor(uint x) public {
        v = x+5;
    }
    function h(uint x) public {
        v += x;
    }
}
pragma solidity ^0.8.0;
contract second1{
    uint public v;
    function f(uint x) public{
        v = x+5;
    }
    function g(uint x) public {
        v += x;
    }
}

pragma solidity ^0.8.0;
contract third{
    uint public v;
    function f() public {
        v = 0;
        uint x = v + v;
    }
}
contract first {
    modifier h() {
        if(v == 0){
            v = 1;
            _;
        }
    }
    function f() public {
        h();
    }
}
contract third1{
    uint public v;
    constructor()public{
        v = 0;
    }
    function g(uint x) external {
        v += x;
    }
}
contract forth {
    uint public v;
    constructor()public{
        v = 0;
    }
    function f() public {
        v = v + v;
    }
}
