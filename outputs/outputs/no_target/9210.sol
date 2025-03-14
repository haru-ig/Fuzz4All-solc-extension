pragma solidity ^0.8.0;
contract modded_boring {
    uint public constant constant_variable = 43;
    using SafeMath for uint;

    function boringConstantMod(uint256 x) public pure returns ({
        uint _result,
        uint _constant,
        uint _boring
    } memory) {
        return;
    }
}

pragma solidity ^0.8.0;
contract c1 {
    c2 public testContract;
}
pragma solidity ^0.8.0;
contract c2 { }
pragma solidity ^0.8.0;
contract c3 {
    c1 public readonly c1Reference;
}
contract c4 {
    c2 public  testContract;
}
pragma solidity ^0.8.0;
contract c5 {
    c3 public c3Reference;
}
pragma solidity ^0.8.0;
contract c6 {
    c4 public c4Reference;
}
pragma solidity ^0.8.0;
contract c7 {
    c5 public c5Reference;
}
contract c8 {
    constructor(c4 r1)
    public {
        c6 _ = new c6();
        c7 _ = new c7(r1);
    }
}
