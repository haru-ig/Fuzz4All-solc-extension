pragma solidity ^0.8.0;
contract A {
    int constant d = 10;
    uint constant r = 10;
    function h() public {
        (int x_, uint y_) = (d, r);
    }
}
pragma solidity ^0.8.0;
contract A {
    int constant d = 10;
    uint constant r = 10;
    function h() public returns (int, uint) {
        (int x_, uint y_) = (d, r);
        return (x_, y_);
    }
}
```
