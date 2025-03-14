pragma solidity ^0.8.0;
contract Mutate0016b is Mutate0015b {
    function f() public {
        emit LogChange(input);
        input /= 2;
        emit LogChange(input);
        input += 2;
    }
    event LogChange(uint indexed value);
}
