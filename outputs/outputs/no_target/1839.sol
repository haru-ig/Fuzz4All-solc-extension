pragma solidity ^0.8.0;
contract CallReturn0{
    uint public _1;
    uint public return0;

    constructor() public{
        return0 = 10;
    }

    function return0() public view returns(uint){
        uint res;
        assembly {
            res := return(return0)
        }
        return res;
    }

    function mutate11() public {
      _1 = _1 * 2;
    }
}
