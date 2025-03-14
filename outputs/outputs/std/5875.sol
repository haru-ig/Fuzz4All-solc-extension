pragma solidity ^0.8.0;
contract MutatedInterface {
    function m() external {
    }
}

pragma solidity ^0.8.0;
contract Parent {
    address public owner;
    Parent(uint i) public {
        owner = msg.sender;
    }
    function modif(mutant) external {
        owner.transfer(owner.balance);
    }
}

pragma solidity ^0.8.0;
contract Child is Parent {
    Child(uint i) public Parent(i);
    function mutant() public modif(mutant) {
    }
}

pragma solidity ^0.8.0;
contract Main {
    Child public c;
    uint public a;

    constructor(uint i, Child _c,) public {
        c = _c;
        a = c.a;
        c.a = a;
        Parent.modif(c);
    }
}
