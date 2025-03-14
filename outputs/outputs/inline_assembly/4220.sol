pragma solidity ^0.8.0;
contract Mutators13 {
    uint public a;
    function increment2 (uint Y) public {
        if (Y > 0) {
            uint Z = Y + 1;
            return;
        }
        a -= 1;
    }
}

pragma solidity ^0.8.0;
contract Mutators14 {
    uint public a;
    function increment3 (uint Y) public {
        if (Y > 0) {
            uint Z = Y + 2;
            a -= 1;
            return;
        }

        if (Y == 1) {
            a -= 1;
            return;
        }
    }
}
