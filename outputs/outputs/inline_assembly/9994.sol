pragma solidity ^0.8.0;
contract G {
    uint8 public x;
    function someFunc(uint8 a, uint8 b) public {
        x = 1;
        call();
    }
    function call() internal {
        x = x + 1;
        this.change();
    }
    function change() external {
        x = 2 ** 62;
    }
}

pragma solidity ^0.8.0;
contract G {
    uint8 public x;
    function someFunc(uint8 a, uint8 b) public {
        this.change();
    }
    function change() external {
        x = 1;
    }
}
