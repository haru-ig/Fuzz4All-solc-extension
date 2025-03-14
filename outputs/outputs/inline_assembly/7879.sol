pragma solidity ^0.8.0;
contract L25 {
    uint M = 10;
    modifier m1 {
        M = 5;
        _;
    }
    function modifyCalled() public m1 {
        x = x + 1;
        x = x * 2;
        x = x + M;
    }
}

pragma solidity ^0.8.0;
contract L25 {
    uint M = 10;
    modifier m1 {
        M = 5;
        _;
    }
    function modifyCalled() public m1 returns (address a) {
        a = address(x);
        x = x + 1;
        x = x * 2;
        x = x + M;
    }
}

pragma solidity ^0.8.0;
contract L25 {
    uint M = 10;
    modifier m1 {
        M = 5;
        _;
    }
    modifier m2 {
        msg.sender.transfer(address(this).balance);
        _;
    }
    function modifyCalled() public m1, m2 {
        x = x + 1;
        x = x * 2;
        x = x + M;
    }
}

pragma solidity ^0.8.0;
contract L25 {
    uint M = 10;
    uint x = 3;
    modifier m1 {
        M = 5;
        _;
    }
    modifier m2 {
        msg.sender.transfer(address(this).balance);
        _;
    }
    function modifyCalled() public m1, m2 {
        x = 9;
        x += 1;
        x *= 2;
        x += M;
    }
}

pragma solidity ^0.8.0;
contract L25 {
    uint M = 10;
    modifier m1 {
        M = 5;
        _;
    }
    modifier m2 {
        msg.sender.transfer(address(this).balance);
        return;
    }
    function modifyCalled() public m1, m2 {
        x = x + 1;
        x = x * 2;
        x = x + M;
        return;
    }
}

pragma solidity >=0.4.21 <0.8
