pragma solidity ^0.8.0;
contract Modification {
    uint256 public a;
    string public b;
    function Modification(string memory _b)public {
        a = 1;
        b = _b;
    }
}
contract Modification2A {
    uint256 public a;
    function Modification2A()public {
        a = 3;
    }
}
pragma solidity ^0.8.0;
contract Modification2B {
    uint256 public a;
    function Modification2B()public {
        a = 3*uint256(9) + 9;
    }
}
contract Modification3A {
    uint256 public a;
    function Modification3A()public {
        a = 3+10;
    }
}
pragma solidity ^0.8.0;
contract Modification3B {
    uint256 public a;
    address public a2;
    modifier Modification3B1(address _a3) {
        a = 3;
        a2 = _a3;
        return (true);
    }
    function Modification3B()public {
        Modification3B1(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48);
        a = 3*17/9;
    }
}
contract Modification4A {
    uint256 public a;
    constructor()public {
        a = 3;
    }
}
contract Modification4B {
    uint256 public a;
    address public a2;
    modifier Modification4B1(address _a3) {
        a = 3;
        a2 = _a3;
        return (true);
    }
    function Modification4B()public {
        Modification4B1(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48);
        a = 17/9;
    }
}
pragma solidity 0.5.16;
contract Modification5A is Modification4A {
    uint256 public x;
    modifier Modification5A1(uint256 _x2) public {
        x = _x2;
        return (true);
    }
    function doTest()public view returns (uint256){
        (uint256 _x) = Modification5A1(3);
        uint256 result = Modification4A.a + _x + 3;
        return result;
    }
}
pragma solidity 0.5.16;
error Modification5B {};
contract Modification5C is Mod
