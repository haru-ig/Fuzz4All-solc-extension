pragma solidity ^0.8.0;

contract L73Mutated {
    uint public x;
    function sneaky() public {
        if (true) {
            x += (3);
        } else {
            x += (2);
        }
    }
}






pragma solidity ^0.8.0;
contract L75Mutated is L73Mutated {
    uint x;
    function sneaky() public {
        if (false) {

            x += 3;
            return;
        }

        x += 2;
    }
}
