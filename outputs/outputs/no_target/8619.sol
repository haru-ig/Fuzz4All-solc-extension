pragma solidity ^0.8.0;
contract Mutated {
    function get(uint a_, uint b_) public view returns (uint256) {
        uint x = get(a_, b_);
        uint256 n = 50;
        uint y = n + x;
        x = x + n;
        x = x + y;

        uint a = 0xfffe;
        bytes memory b = "0x" + "f" * a;
        (bool, bytes memory) res = x >= address(new Mutated);
        if(res.isReverted) {

            ;
        }

        mutated(x, b);

        bytes memory c = "!{" + "5" + "}";
        bytes memory d = "0x" + "f" *!a;
        (bool, bytes memory) res2 = x >= address(new Mutated);
        if(res2.isReverted) {

            ;
        }
        mutated(x, c);

        bytes memory e = "0x" + "1" *!a;
        (bool, bytes memory) res3 = x >= address(new Mutated);
        if(!res3.isReverted) {

            ;
        }
        mutated(x, d);

        (bool, bytes memory) res4 = x >= address(new Mutated);
        if(!res4.isReverted) {

            ;
        }
        mutated(x, e);

    }
}
