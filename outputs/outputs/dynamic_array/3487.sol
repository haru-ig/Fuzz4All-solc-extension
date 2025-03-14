pragma solidity ^0.8.0;
contract C {
    uint256[][] [] public v0;
    uint256[][] [] public v6;
    uint256[][] [] public v10;
    uint256[][] [] public v18;
    uint256[][] [] public v24;
    uint256[][] [] public _empty;
    uint256[][] [] public _nonEmpty;
    function multiply() public payable {
        v0[0][0][0] *=1;
        v6[0][0][0]*=1;
        v10[0][0][0]*=1;
        v10[0][2][0]=1;
        v10[2][2][0]=1;
    }
}


pragma solidity ^0.8.0;



import "./20_Inheritance/Inheritance.sol";
import "./20_Inheritance/Inheritance20.sol";

contract Inheritance13Tests is Inheritance, Inheritance20 {
    uint256[] public y;
    uint256[] public z;

    constructor(string memory name_, string memory symbol_) inheritance(name_, symbol_) {}

    string public customData;
    function customFunction() public returns(uint256) {
        return 1;
    }

    function custom() public override {
        super.custom();
    }
}


pragma solidity ^0.8.0;



import "./20_Inheritance/Inheritance.sol";
import "./20_Inheritance/Inheritance20.sol";

contract Inheritance14Tests is Inheritance {
    uint256[] public y;
    uint256[] public z;

    constructor(string memory) inheritance("") {}

    function custom() public override {
        super.custom();
    }

    function customFunction() public view returns(uint256) {
        return 1;
    }
}


pragma solidity ^
