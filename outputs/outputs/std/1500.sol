pragma solidity ^0.8.0;
contract Mutate {
    address[] public _test = new address[](10);

    function main() public {
        _test[0] = add(2,2);
        _test[1] = add(2,2);
        _test[2] = sub(2,2);
        _test[3] = sub(2,2);
        _test[4] = mul(2,2);
        _test[5] = mul(2,2);
        _test[6] = div(2,2);
        _test[7] = div(2,2);
        _test[8] = eq(10,2);
        _test[9] = eq(10,3);
        }

    function add(_a,_b) private pure returns (uint64) {
        return _a+_b;
    }

    function sub(_a,_b) private pure returns (uint64) {
        require(_b!=0);
        return _a-_b;
    }

    function mul(_a,_b) private pure returns (uint64) {
        require(_b!=0);
        return _a*`_b;
    }

    function div(_a,_b) private pure returns (uint64) {
        require(_b!=0);
        return _a/_b;
    }

    function eq(_a,_b) private pure returns (bool) {
        return _a==_b;
    }
}
