pragma solidity ^0.8.0;
contract Test2 {
    event event177(uint a);
    event event137(uint a);
    event event268(uint a);
    event event326(uint a);
    uint public id;
    bool status;
    modifier onlyStatus { if (status) _; }
    constructor () public {
        bool flag = true;
        status = flag;
    }
    function onlyTrue() public {
        require(status, "onlyTrue");
    }
    function onlyFalse() public {
        status =!status;
    }
}
