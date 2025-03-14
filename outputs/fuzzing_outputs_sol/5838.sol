pragma solidity ^0.8.0;
contract ModdedSemantics {
    uint a;
    uint b;
    uint c;
    address d;
    string name;
    constructor(string memory _name) {
        d = address(0);
        name = _name;
    }
    function test() public {
        a = 3;
        b = 2;
        c = 1;
        d = address(0);
        c = 2;
        b = 1;
        a = 2;
        b = b+1;
        if(a >= 3 || b <= 2){
            if(a==2) d = address(0);
            b = 3;
            a = a+1;
        }
        if(d!= address(0)){
            d = d;
        }
    }
    function change_name(string memory _name) public {
        name = _name;
    }
}
contract ContractCalls {
    function call_contracts_by_name(string calldata name, uint) external pure {
        if(name == "movedSemantics") address(new MovedSemantics());
        if(name == "moddedSemantics") address(new ModdedSemantics("foo"));
    }
}
