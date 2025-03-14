pragma solidity ^0.8.0;
contract C{
    modifier m (){
        assert(f()!= 1);
        _;
    }
    BaseInterface public b;
    function f() public pure returns (uint256 n){
        m;
        b = BaseInterface(address(this));
        n += b.f();
        return n;
    }
}

pragma solidity ^0.8.0;
