pragma solidity ^0.8.0;
contract L72 {
    uint x;
    function sneaky() public {
        x = x + 2;
    }
}

pragma solidity ^0.8.0;
contract L72 {
    uint x;
    function sneaky() public {
        x = x + 2;
        x = x + 4;
        x = x + 8;
        x = x + 16;
    }
}

pragma solidity ^0.8.0;
contract L72 {
    uint x;
    function sneaky() public {
        uint s = 0;
        while(s <= 10){
            s = s + 1;
        }
        x = x + s;
    }
}

pragma solidity ^0.8.0;
contract L72 {
    uint x;
    function sneaky() public {
        uint s = 0;
        while(s <= 20){
            s = s + 3;
        }
        x = x + s;
    }
}

pragma solidity ^0.8.0;
contract L72 {
    uint x;
    function sneaky() public {
        uint s = 0;
        while(s <= 50){
            s = s + 5;
        }
        x = x + s;
    }
}
