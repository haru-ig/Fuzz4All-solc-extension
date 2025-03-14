pragma solidity ^0.8.0;
contract Solidity2 {

    bool public isActive = true;
    uint public constant myConst = 9;

    constructor() public {
        isActive = true;
    }

    modifier whenActive() {
        require(isActive, "Contract should be in use during runtime");
        _;
    }

    modifier whenNotActive() {
        require(!isActive, "Contract should not be in use during runtime");
        _;
    }

    function toggle() public {
        isActive =!isActive;
    }
}
contract BadInlineAssembly {

    modifier myModifier() {


        uint i = Solidity.i;


        uint myConst = Solidity.myConst;
        myConst = 2;

        uint myConst2 = 2;
        myConst2[1] = 2;
        _;
    }

    function badContract() public myModifier {
        uint i = 25;
        i = 0;
    }
}
contract GoodInlineAssembly {
    uint public myConst = 9;
    uint public myConst2 = 9;

    function badFunction() public returns (bool) {
        uint i = 0;
        uint myConst;
        myConst = 2;
        myConst = 0;

    }


    function goodFunction() public returns (bool) {
        uint i = 0;
        uint myConst;
        myConst = 2;
        myConst = 0;
        uint myConst2 = 2;
        myConst2 = 0;
    }

    function goodFunction2() public returns (bool) {
        uint i = 0;
        uint myConst;
        myConst = 2;
        i = 9;
    }
}

address addr = EVM.start();
EVM.stop();
