pragma solidity ^0.8.0;
contract ArrayOperationsLib {

    function add(uint[] memory a, uint v) internal pure returns(uint[] memory){return addMod(a, [v], 1);}
    function addMod(uint[] memory a, uint[] memory va, uint addend) internal pure returns(uint[] memory){a[0] += addend; return a;}

    function sub(uint[] memory a, uint v) internal pure returns(uint[] memory){return subMod(a, [v], 1);}
    function subMod(uint[] memory a, uint[] memory va, uint subtrahend) internal pure returns(uint[] memory){a[0] -= subtrahend; return a;}

    function set(uint[] memory a, uint index, uint v) internal pure {a[index] = v;}

    function len(uint[] memory a) public pure returns (uint){return a.length;}

    function get(uint[] memory a, uint index) public pure returns (uint){return a[index];}

    function mod(uint a, uint b) internal pure returns(uint){require(b!= 0); return a % b;}

    function mod(uint[] memory a, uint[] memory b) internal pure returns(uint[] memory){
        uint[] memory ra = a;
        uint[] memory rb = b;
        uint[] memory ra0 = ra;
        uint[] memory rb0 = rb;
        uint a0 = ra0[0];
        uint b0 = rb0[0];
        for(uint i = 0; i < ra.length; i++){
            ra0[i] = a.mod(ra0[i]);
        }
        for(uint i = 0; i < rb.length; i++){
            rb0[i] = b.mod(rb0[i]);
        }
        for(uint i = 0; i < ra.length; i++){
            ra0[i] = rb0[i];
        }
        for(uint i = 0; i < ra.length; i++){
            ra0[i] = ra0[0];
        }
        for(uint i = 0; i < ra.length; i++){
            ra[i] = ra0[i];
        }
        return ra;
    }

    function pos(uint[] memory a, uint x) public pure returns(uint){for(uint i = 0; i < a.length; i++){if(a[i] == x){return i;}}}
    /* Please create a
