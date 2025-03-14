pragma solidity ^0.8.0;
contract m211 {
    uint public s;
    uint public i;
    function(uint) public {
        (s, i) = (s * s, uint(s));
        s += 3;
        s *= 2;
        s += 3;
        s = uint(s) + 10;
        s = uint(s) - uint(s);
    }
    constructor() public {
    }
}

pragma solidity ^0.8.0;
contract m212 {
    uint public s;
    uint public i;
    function(uint) public {
    }
    function() public {
    }
    constructor() public {
    }
}

pragma solidity ^0.8.0;
contract m213 {
    uint public s;
    uint public i;
    function(uint) public {
    }
    function() public pure {
    }
    constructor() public {
    }
}

pragma solidity ^0.8.0;
contract m214 {
    uint public s;
    uint public i;
    function(uint) public {
        (s, i) = (s * s, unchecked(uint(s)));
        s -= s;
        s %= 2;
        s += 3;
    }
    constructor() public {
    }
}
