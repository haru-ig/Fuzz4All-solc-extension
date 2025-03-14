pragma solidity ^0.8.0;
contract SymbolicEquality_ConditionalDynamicArrayAbiReencodingSizeValidation {
    uint[] public x;
    address[] public y;

    constructor () public {
        x = new uint[](10);
        y = [address(0)];
        x[3] = x[7];
        x[6] = x[8];
        x[10] = 0;
        x[3] = x.push(x[2]) - 1;
    }
        function m() public view returns (bool,uint[] memory) {
        uint[] memory z = _return_and_cleanup1();
        return (y.length > 0,z);
    }

    function _return_and_cleanup1() internal pure returns (uint[] memory) {
        uint[] memory z = new uint[](2);
        z[0] = 1;
        z.push(z[1]);
        uint[] memory w = new uint[](x.length + 1);
        w[0] = x[x.length-1];
        x[x.length-1] = 2;
        w.push(w[1]);
        return z;
    }
}
