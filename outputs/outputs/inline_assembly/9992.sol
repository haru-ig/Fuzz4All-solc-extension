pragma solidity ^0.8.0;
contract G {
    uint8 i;
    uint8 x;
    function someFunc(uint8 a, uint8 b) public {
        x = a + b;
        x = 1 + x;
    }
    function call() internal {
        i = i + 1;
        call();
    }
}
contract G {
    uint8 i;
    uint8 x;
    function someFunc(uint8 a, uint8 b) public {
        x = a + b;
    }
    function call() internal {
        i = i + 1;
        if(true) {
            G g = new G();
            g.someFunc(a, b);
        }
        else {
            G g = new G();
            g.someFunc(a, b);
        }
    }
}
contract G {
    uint8 i;
    uint8 x;
    function someFunc(uint8 a, uint8 b) public {
        x = a + x;
    }
    function call() internal {
        i = i + 1;
        call();
    }
}
contract G {
    uint8 i;
    uint8 x;
    uint8 y;
    uint8 z;
    uint8 w;
    function someFunc(uint8 a, uint8 b) public {
        x = a + 1;
        call();
    }
    function call() internal {
        y = y + 1;
        z = z + 1;
        w = w + 1;
        i = i + 1;
    }
}
