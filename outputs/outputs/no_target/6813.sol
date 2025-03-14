pragma solidity ^0.8.0;
contract TestMutated804 {

    function test(uint value) public view returns (uint) {
        uint ret;
        modifier try {
            uint old = 1;
            uint ret2 = 0;
            if (!(bool(0))) {
                return 0;
            }
            unchecked {
                ret = x * 10;
            }
        }
        catch (uint old) {
            ret = old + 100;
        }
        try;
        if (uint div(value, 0))
            ;
        else;
        finally {
            ret = 0;
        }
        return 111;
    }
}
