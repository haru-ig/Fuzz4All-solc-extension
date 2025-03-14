pragma solidity ^0.8.0;
contract L73Mutant {
    uint x;
    function sneaky() public {
        if (true) {
            x += 4;
        } else {
            x += 2;
        }
    }
}
contract L73Mutant2 {
    uint x;
    function sneaky() public {
        if (true) {
            x += 3;
        } else {
            x += 4;
        }
    }
}
contract L73Mutant3 {
    uint x;
    function sneaky() public {
        if (true) {
            x += 2;
        } else {
            x += 4;
        }
    }
}
contract L73Mutant4 {
    uint x;
    function sneaky() public {
        if (true) {
            x += 4;
        } else {
            x += 3;
        }
    }
}
contract L73Mutant5 {
    uint x;
    function sneaky() public {
        if (true) {
            x += 2;
        } else {
            x += 3;
        }
    }
}
contract L73Mutant6 {
    uint x;
    function sneaky() public {
        if (true) {
            x += 4;
        } else {
            x += 4;
        }
    }
}
