pragma solidity ^0.8.0;


abstract contract Updated {
    modifier update_NewVar(uint _newVar) {
        _;
        _ ;
        update_NewVar(NEW_VAR_UPDATE);
    }
}
