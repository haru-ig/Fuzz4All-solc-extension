pragma solidity ^0.8.0;
contract Newer {
    function newer_(uint a) public pure returns(uint b) {
        b=2*a;
        return 2*a;
    }
}


contract Caller {
    Old old;
    New new;
    Newer newer;
    function caller(uint a) public {
        (
            uint(address(old, 0))=old(a),
            uint(address(new, 0))=new(a),
            uint(address(newer, 0))=newer(a)
        );

        (uint(address(address(this))), uint(old, 0))=old(a), (uint(address(address(this))), uint(address(new), 0))=new(a), (uint(address(address(this))), uint(address(address(address(this))), uint(address(address(newer), 0))=newer(a), uint(address(address(this))), uint(address(address(address(address(this))), uint(address(address(address(address(this))), uint(address(address(address(address(this))), uint(address(address(address(address(address(address(address(address(this))))))))))))))))))) return;
    }
}
