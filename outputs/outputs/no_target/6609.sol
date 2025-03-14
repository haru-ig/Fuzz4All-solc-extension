pragma solidity ^0.8.0;

contract modifierIfError {
    function f() pure public {
        if(false) throw;
    }
}
pragma solidity ^0.8.0;
contract modifierIfNotRelevant{
    modifierIfError errorOrNoErrorAndReturn(uint a, uint b){
        if (b % 2 == 1) error();
        require(a < b, "!b divisible by {b/2}");
        return;
    }
    modifierIfError errorOrNoErrorAndReturn(uint a, uint b, uint c){
        if (b % 3 == 1) error();
        require(a < b && a < c, "!a divisible by {b/3}");
        return;
    }
    modifierIfError ifNotRelevantAndThrow(bool boolVal){
        if (boolVal) error();
        return;
    }
}


pragma solidity v0.8.0;
contract C{
    constructor() {
    }
}
