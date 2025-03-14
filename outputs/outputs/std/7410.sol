pragma solidity ^0.8.0;
library MutatedLibrary {
    event Modify(uint _number);
    event Call(uint _number, bool _result);
    function modify(uint _a, uint _b) public {
        emit Modify(_a);
    }
    function mutate(uint _a) public {
        emit Call(_a, true);
    }
}
