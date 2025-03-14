pragma solidity ^0.8.0;
contract MutatingContract {
    function foo(uint256[] memory a) public pure {
        a.push(1);
    }
}
contract MutatingContract {
    uint[4] numbers =[8, 3, 5, 1];

    function foo(uint256[] memory a) public pure {
        a[0] = 1;
    }
}

pragma solidity ^0.8.0;
contract MutatingContract {
    uint[5] numbers = [8, 3, 5, 1, 2];
    uint[] memory a;
    uint length;

    constructor() public {
    }

    function foo() public {
        a[1] = 1;
        a = a;
        a[0] = 2;
        length = uint(a.length);
        length = 3;
    }
}
contract MutatingContract {
    uint index;

    function foo() public {
        index = 1;
    }
}
contract MutatingContract {
    uint index;
    uint[] memory a;

    function foo() public {
        a[0] = 1;
        a = a;
        a[1] = 2;
        index = 2;
        bytes memory b =  b;
        bytes memory c = a;
        uint len = b.length;
        index = 3;
    }
}

pragma solidity ^0.8.0;
contract MutatingContract {
    uint[10] private x;
   uint[] memory y;
    constructor() public {
        x[4] = 1;
    }
    function change(uint index, uint[10] memory x, uint[] memory y) public {
        x[index+1] += uint(uint256(uint8(index)));
        y[index] = uint(uint256(uint8(index)));
    }
}
contract MutatingContract {
    uint[4] private x;
    constructor() public {
        x[1] = 1;
    }
    function change(uint index, uint[] memory x) public {
        x[index+2] += uint(uint256(uint8(index)));
    }
}
