pragma solidity ^0.8.0;
contract Mutated {
    function changeI() public {
        uint local_i = i;
        i = 3;
        local_i = i;
        i++;
    }
    uint public i = 2;
}
pragma solidity 0.8.0;
contract NotMutated {
    function changeI() public {
        uint a;
    }
    uint public i = 2;
}
contract Mixed {
    function changeI() public {
        uint a;
        a++;
        uint b;
        b--;
        i = i + 1;
        i = local_I;
    }
    uint public i = 2;
}
contract NotMixed {
    function changeI() public {
        uint a;
    }
    uint public i = 2;
}
contract Mixed2 {
    function changeI() public {
        uint a;
        i = local_I;
        a++;
        b = i;
        i = i + 1;
        i = local_I;
    }
    uint public b;
    uint public i = 2;
}
