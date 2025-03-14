pragma solidity ^0.8.0;
contract Test37 {
    function mutated7() public {
    uint x = 1;
    uint y = 2;
    x = x + 2;
    emit logEvent(x);
    }
    event logEvent(uint foo);
}
contract Test38 {
    function mutated8() public {
    uint x = 1;
    uint y = 2;
    x = x + x;
    emit logEvent(x);
    }
    event logEvent(uint foo);
}

pragma solidity ^0.8.0;

contract Test39 {
    function mutated9() public {
    uint x = 1;
    uint y = 0;
    x[0] = true;
    a[0] = x;
    x.length++;
    emit logEvent(x);
    emit logEvent(a);
    }
    event logEvent(uint foo);
}

pragma solidity ^0.8.0;

contract Test40 {
    function mutated10() public {
    uint x = 1;
    uint y = 0;
    uint[2] storage a = x;
    a[0] = x;
    x = x + x;
    emit logEvent(x);
    emit logEvent(x);
    }
    address[] public a;
    event logEvent(uint foo);
}

pragma solidity ^0.8.0;

contract Test41 {
    function mutated11() public {
    uint x1;
    uint x2;
    uint y = 1;
    uint z = 0;
    x1[0] = false;
    while (true) {
        x1 = x1 + x2;
        if (!x1[y]) {
            break;
        }
        y--;
    }
    z.length++;
    emit logEvent(x1);
    }
    event logEvent(uint foo);
}
pragma solidity ^0.8.0;

contract Test43 {
    function mutated12() public {
    uint x1;
    uint x2;
    uint y = 1;
    uint z = 0;
    x1.length++;
    x1 = x2[y];
    x1[y] = x2[y-1];
    x2[y]--;
    z.length += 2;
    emit logEvent(x1);
    emit logEvent(x1);
    }
    event logEvent(uint foo);
}

pragma solidity ^0.8.0;

contract Test44 {
    constructor() public {
        uint[2] memory a
