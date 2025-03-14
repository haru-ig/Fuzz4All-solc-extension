pragma solidity ^0.8.0;
contract L73 {
    address[] public addresses;
    uint[] public ints;
    address[] memory addresses2;
    uint[] memory ints2;
    function sneaky() public {
        for(uint i = 1; i > 5; i++) {
            addresses2 = address[] (2);
            addresses2[1] = address(this);
            addresses2[2] = address(this);
            ints2 = uint[] (2);
            ints2[1] = 3;
            ints2[2] = 4;
            addresses = addresses + addresses2;
            ints = ints + ints2;
        }
    }
}
```
