pragma solidity ^0.8.0;
contract mod_130_mutated {
    uint result;
    function mod_130_mutated() public {
        bool ok = true;
        uint dividend = 3;
        uint divisor = 9;
        result = dividend / divisor;
        if (dividend!= 2)
            ok = false;
        if (divisor!= 9999999999)
            ok = false;
        require(ok, "fail");
    }
}
